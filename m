Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 869E9905C8
	for <lists+linux-nvme@lfdr.de>; Fri, 16 Aug 2019 18:30:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Szjdh3LLTCdEDbd0WAC6QtFre5fEi2APas5x719QCdg=; b=m0pmmZJ73tyzMe
	LVPUjqfDkFazQW4zHDzcTH1LEXqX0NmgxBNo8WCJKRnadQyIPik6nhW81wiIhYV/PZsPTepdb9cZr
	0Y4d94dtv8zbpUiGkR2R/tnCcYzYe702w4+yOB9O1qJ3UobVskiUOJEl6SqVYZX8wWryP5LEb2Y14
	/SpcF+Sx5z3+HKKZlgSyRGySmmYyASdPmqlPzm2CPKZoOsVAFSeSZm+vfH7gDaM7fsQ8yQryicQaH
	94ZhH5bjB4cXX6QqzfyhBPEUvGaP74VSYnsKCvShUA/K7FTUKFePBSxxzJdoKJYzlcCYVL9KCNP3o
	RKEKBI5sk8E26liz9Vgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyf7J-0005Oq-Al; Fri, 16 Aug 2019 16:30:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyf7A-0005K2-8s
 for linux-nvme@lists.infradead.org; Fri, 16 Aug 2019 16:30:09 +0000
Subject: Re: [GIT PULL] Power management fixes for v5.3-rc5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565973007;
 bh=XHjlZmKTF9nNMGhgjea6r5OALoj3MwKvj+3B+20nqFI=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=RT3tspNBfxudhjqy1BRPh2T1OxocwyBShKCEBeEj/NKaMJ+HxS6S+MHIE/Hy0Iv0k
 IPemShark9xJhwpYnFuXj7ALffjBlfb9nbKtolb3lF/3d+qq6nXbeH1B0XKoP+5gNs
 gE7hYjZGskOAQzbktfsqYg0WoU5j2nhUczA59np4=
From: pr-tracker-bot@kernel.org
In-Reply-To: <CAJZ5v0j4ezEuK1dk0J3wwjSuudzjhKWTXzJL=EkE1QG39HKRiw@mail.gmail.com>
References: <CAJZ5v0j4ezEuK1dk0J3wwjSuudzjhKWTXzJL=EkE1QG39HKRiw@mail.gmail.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <CAJZ5v0j4ezEuK1dk0J3wwjSuudzjhKWTXzJL=EkE1QG39HKRiw@mail.gmail.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git pm-5.3-rc5
X-PR-Tracked-Commit-Id: a3ee2477c45f73184a64d9c6cf97855a52732dc6
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 2d63ba3e41db3ceb0d23924ed2879b910276e24c
Message-Id: <156597300748.15122.2547327554860184999.pr-tracker-bot@kernel.org>
Date: Fri, 16 Aug 2019 16:30:07 +0000
To: "Rafael J. Wysocki" <rafael@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_093008_338921_2EBC9A50 
X-CRM114-Status: UNSURE (   1.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Linux PCI <linux-pci@vger.kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Linux PM <linux-pm@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 16 Aug 2019 15:11:27 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git pm-5.3-rc5

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/2d63ba3e41db3ceb0d23924ed2879b910276e24c

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
