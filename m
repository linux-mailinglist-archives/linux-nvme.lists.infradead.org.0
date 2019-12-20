Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B761273FA
	for <lists+linux-nvme@lfdr.de>; Fri, 20 Dec 2019 04:32:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MQ4eTRgNADWgvJmG3+DpOWiV/NK+kMT91dLvA1BQq9g=; b=ESWYvIF0ZQhjH8
	bkRhgGD3XgYcWgJBn+wMkYA35sY1gP+GQTGCN+cF7YC3sBXHWZrYKhyqO76we0IXQhyWY2n+1Su4P
	+fMTF2aQORZwF3toQ0RxOxK1Z9ZQPZurQDthKFHmSeI0wTnB6/7YJkO/+05+4013hacFETrvVLMfK
	jHRdMRG/eb4i0x4Uad2GHgyIiURHfaL4QzwbuGiG1P4n3leIGEzs2VIBwQMdkUrkRvafnQv0JB1zC
	GDIeq3qeL+ws4w/XpGdMryqVsRLXUETdbAKNmfS/MRqcbw0dClyZNNrK1Jqyb1abYvJIz1yitG4um
	lWH+EaJACbCeB4ZnJg7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii91t-0007JA-Hd; Fri, 20 Dec 2019 03:32:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii90h-0006Ys-FP
 for linux-nvme@lists.infradead.org; Fri, 20 Dec 2019 03:31:30 +0000
Received: from localhost (36-236-5-169.dynamic-ip.hinet.net [36.236.5.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 278BD24680;
 Fri, 20 Dec 2019 03:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576812687;
 bh=YD8ch1dgnhr96Bcs6yOJW5tSmKSai696pi1ntxM0O4I=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XtK0wIjv4kGzmjTDM3gx9sZWnjcVK/ajA59kOlDYxa9SnuNimaXbPyfxmruPzkzAq
 Mx3F3a6aU6Wl5yg2S6km3vOpF7QtIdDE8+GZB11IuQfdFTWtJEMX6OuLTZGn6WQi4+
 /ptWDI7DISS9sjHERKoRxpGCBKWuDYt1c1mF1aU4=
From: Andy Lutomirski <luto@kernel.org>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 4/4] Do not install /etc/nvme/hostid or /etc/nvme/hostnqn by
 default
Date: Thu, 19 Dec 2019 19:31:05 -0800
Message-Id: <0537703137403a60ecd278610663db2d29f95624.1576726427.git.luto@kernel.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1576726427.git.luto@kernel.org>
References: <cover.1576726427.git.luto@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_193127_731103_190DAC00 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andy Lutomirski <luto@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Pre-generating them is nonsensical for package managers.  Moreover,
with the new systemd-generated ID support, it's preferable for the
files to be absent.  Don't generate them unless explicitly requested.

Signed-off-by: Andy Lutomirski <luto@kernel.org>
---
 Makefile | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/Makefile b/Makefile
index d88404dd51f6..acb6983cb5b1 100644
--- a/Makefile
+++ b/Makefile
@@ -140,14 +140,12 @@ install-hostparams: install-etc
 
 install-etc:
 	$(INSTALL) -d $(DESTDIR)$(SYSCONFDIR)/nvme
-	touch $(DESTDIR)$(SYSCONFDIR)/nvme/hostnqn
-	touch $(DESTDIR)$(SYSCONFDIR)/nvme/hostid
 	if [ ! -f $(DESTDIR)$(SYSCONFDIR)/nvme/discovery.conf ]; then \
 		$(INSTALL) -m 644 -T ./etc/discovery.conf.in $(DESTDIR)$(SYSCONFDIR)/nvme/discovery.conf; \
 	fi
 
 install-spec: install-bin install-man install-bash-completion install-zsh-completion install-etc install-systemd install-udev install-dracut
-install: install-spec install-hostparams
+install: install-spec
 
 nvme.spec: nvme.spec.in NVME-VERSION-FILE
 	sed -e 's/@@VERSION@@/$(NVME_VERSION)/g' < $< > $@+
-- 
2.23.0


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
