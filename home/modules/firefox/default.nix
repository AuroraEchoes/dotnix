{ config, pkgs, ... }:

{
	programs.firefox = {
		enable = true;
		package = pkgs.firefox.override {
			cfg.enableTridactlyNative = true;
		};
		profiles."default" = {
			extensions = with pkgs.nur.repos.rycee.firefox-addons; [
				bitwarden
				clearurls
				privacy-badger
				ublock-origin
				tridactyl
			];

			settings = {
				"gfx.webrender.all" = true; # Force enable GPU acceleration
				"media.ffmpeg.vaapi.enabled" = true;
				"widget.dmabuf.force-enabled" = true; # Required in recent Firefoxes
				"privacy.webrtc.legacyGlobalIndicator" = false;
				"app.shield.optoutstudies.enabled" = false;
				"app.update.auto" = false;
				"browser.bookmarks.restore_default_bookmarks" = false;
				"browser.contentblocking.category" = "strict";
				"browser.ctrlTab.recentlyUsedOrder" = false;
				"browser.discovery.enabled" = false;
				"browser.laterrun.enabled" = false;
				"browser.newtabpage.activity-stream.asrouter.userprefs.cfr.addons" = false;
				"browser.newtabpage.activity-stream.asrouter.userprefs.cfr.features" = false;
				"browser.newtabpage.activity-stream.feeds.snippets" = false;
				"browser.newtabpage.activity-stream.improvesearch.topSiteSearchShortcuts" = false;
				"browser.newtabpage.activity-stream.improvesearch.topSiteSearchShortcuts.havePinned" = "";
				"browser.newtabpage.activity-stream.improvesearch.topSiteSearchShortcuts.searchEngines" = "";
				"browser.newtabpage.activity-stream.section.highlights.includePocket" = false;
				"browser.newtabpage.activity-stream.showSponsored" = false;
				"browser.newtabpage.activity-stream.showSponsoredTopSites" = false;
				"browser.newtabpage.pinned" = false;
				"browser.protections_panel.infoMessage.seen" = true;
				"browser.quitShortcut.disabled" = true;
				"browser.search.selectedEngine" = "DuckDuckGo";
				"browser.shell.checkDefaultBrowser" = false;
				"browser.ssb.enabled" = true;
				"browser.toolbars.bookmarks.visibility" = "never";
				"browser.urlbar.placeholderName" = "DuckDuckGo";
				"browser.urlbar.suggest.openpage" = false;
				"datareporting.policy.dataSubmissionEnable" = false;
				"datareporting.policy.dataSubmissionPolicyAcceptedVersion" = 2;
				"dom.security.https_only_mode" = true;
				"dom.security.https_only_mode_ever_enabled" = true;
				"extensions.getAddons.showPane" = false;
				"extensions.htmlaboutaddons.recommendations.enabled" = false;
				"extensions.pocket.enabled" = false;
				"general.skins.selectedSkin" = "firefox-compact-dark@mozilla.org";
				"identity.fxaccounts.enabled" = false;
				"privacy.trackingprotection.enabled" = true;
				"privacy.trackingprotection.socialtracking.enabled" = true;
			};
		};
	};
}
