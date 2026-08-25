-- ============================================================================
-- FONCTION : GitConflicts
-- ============================================================================
-- Cette commande personnalisée liste tous les fichiers en conflit Git
-- dans la quickfix list pour permettre une navigation facile entre les conflits.
--
-- Utilisation : :GitConflicts
--
-- Workflow :
-- 1. Exécute 'git diff --name-only --diff-filter=U' pour trouver les conflits
-- 2. Si aucun conflit → affiche un message et s'arrête
-- 3. Sinon → remplit la quickfix avec la liste des fichiers
-- 4. Ouvre automatiquement la fenêtre quickfix
-- 5. Affiche une notification avec le nombre de conflits
-- ============================================================================
vim.api.nvim_create_user_command('GitConflicts', function()
	-- Exécute la commande Git pour lister les fichiers en conflit (Unmerged)
	-- --name-only : affiche uniquement les noms de fichiers
	-- --diff-filter=U : filtre pour ne garder que les fichiers "Unmerged" (en conflit)
	-- systemlist() retourne un tableau de lignes (une ligne = un fichier)
	local conflicts = vim.fn.systemlist('git diff --name-only --diff-filter=U')
	-- Vérifie si le tableau est vide (aucun conflit détecté)
	-- #conflicts = nombre d'éléments dans le tableau
	if #conflicts == 0 then
		-- Affiche une notification INFO pour dire qu'il n'y a pas de conflit
		vim.notify('Aucun conflit détecté', vim.log.levels.INFO)
		-- Sort de la fonction (ne continue pas)
		return
	end
	-- Initialise un tableau vide qui contiendra les entrées de la quickfix
	local qf_list = {}

	-- Boucle sur chaque fichier en conflit
	-- _ = index (non utilisé), file = nom du fichier
	for _, file in ipairs(conflicts) do
		-- Ajoute une entrée dans le tableau quickfix
		table.insert(qf_list, {
			-- Nom du fichier (chemin relatif depuis la racine Git)
			filename = file,
			-- Numéro de ligne où positionner le curseur (ligne 1 par défaut)
			lnum = 1,
			-- Texte descriptif qui s'affiche dans la quickfix
			text = 'Git conflict'
		})
	end
	-- Remplit la quickfix list avec notre tableau d'entrées
	-- Remplace le contenu existant de la quickfix
	vim.fn.setqflist(qf_list)
	-- Ouvre la fenêtre quickfix pour afficher la liste
	vim.cmd('copen')
	-- Affiche une notification WARNING avec le nombre de fichiers en conflit
	-- string.format permet d'insérer dynamiquement le nombre dans le message
	vim.notify(string.format('%d fichier(s) en conflit', #conflicts), vim.log.levels.WARN)
	-- Options de la commande :
	-- desc = description qui s'affiche dans l'aide (:h GitConflicts)
end, { desc = 'Liste les conflits Git dans quickfix' })
