Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF8877E44
	for <lists+linux-nvme@lfdr.de>; Sun, 28 Jul 2019 08:35:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jVVTQTDU9d5UAniYnrj6aprG3FPtVkoaVbPxZFDyrRA=; b=o3XC3BJtLaM3Nf
	6DDsKLJFdFPNSvMIuGf0CwAIdg6sfp1awo70QlQzdud34o9evZVB14AtxxeRxRpjMU5WA70+o+BTe
	tEMZqT905gij9Cs14w7oeWfAgK/Jwyw01TzWr84xIpHMKnoQ5XYw80IDRA97DMBwdlnRz6uKHmA4K
	c0bbY7BFbw4Ag0ik+U1e4FSI/4pp+1ufLwCavfqrl4keq2O2ONSqxtoHGNQj1s9BhBfXsakokvFnl
	T19rzsS8L2XPDMyzgQaOIlmmcqPx+y0fwjkHkiv2ETyIt3TDRcbsg7/pAYcNQVKGDjRbpJvbAKTPC
	w0cD/GytR3w9/oJLbGuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrcmT-0001Dk-AM; Sun, 28 Jul 2019 06:35:41 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrcmC-0001DQ-WA
 for linux-nvme@lists.infradead.org; Sun, 28 Jul 2019 06:35:26 +0000
Received: by mail-pf1-x443.google.com with SMTP id 19so26418032pfa.4
 for <linux-nvme@lists.infradead.org>; Sat, 27 Jul 2019 23:35:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TdDqu8A6JHDXB7Cbpr0BzSUFa0UewY7JyKlPR7q0xV8=;
 b=Ijen/oLMQZsvkXCWWMhijJEZaYGADLUjpITFLaMtjPlG+W4JF7NGY/LCjDRCDBrSS1
 7LPMH/UZgK80sKjaA/w9cU0FeLST7SIwsqGbm12ruAL/Se2Hg9NuTinz3eiA3coS5Ogc
 tvAfhthFMFax6DJTmLabS8dnoV0YyDnDYARoIbVe6OYIMBVC+3uMaoebsl+/Z0m0ZdnY
 MbWX0Pb7gudRWmPcB5inphclrgcFX1kYo15K7UiNCPTYMUzYEQbKtIkBTChh4YN8cXuf
 taeAimYQFXr9WVnpGXPvMDfD07oEfwA5ekel6y9KOgUC53NBrHxoYLFwwCKxSA5TTb5B
 3WIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TdDqu8A6JHDXB7Cbpr0BzSUFa0UewY7JyKlPR7q0xV8=;
 b=gaRE7gbrY/g5XKDPhhozSceXo91+abDT4btAgpEAU4yld2A0x1ara9WtP17FsOwad0
 8JIrzYt6tApGio7wT7Ob9io0hmt6fLMB7S8k8qkKQwJiDFO078c7dR5cRj4Pn+STavhz
 eRJtgVpcC8iPnXhaouaWss0ZHdwJNCPYwbomd/wu/1/sFT+REXSod15Zjk/K1YBhF29h
 G18PXWrEdTql36oDkwmmvRcQGADM6VILwQyfhpqEqBr47YvA8u25CfXX0LIHg/owMn5o
 phECXfLyXEM7iyZWB+dCvCvjmuKS1icYdpcBRWcWs+XbSQFvny2nVCnXijLHvJ7vKoko
 wb0g==
X-Gm-Message-State: APjAAAXNGLF88hKEAlO9aAs2lGpvSSOawXZj8QR8lHmMZMEeuP+LfeCv
 jAXEHm3NUYnEqbdqH9FHEdrInsAzFaI=
X-Google-Smtp-Source: APXvYqys/kyOZNKlEskGmyQAUaCIyl24GcxmSMmORT7L3pOCiOoQKHOgJtrDv/JpsBqLDEJDe1BAKw==
X-Received: by 2002:a62:198d:: with SMTP id 135mr30150675pfz.169.1564295723663; 
 Sat, 27 Jul 2019 23:35:23 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id h1sm72419277pfg.55.2019.07.27.23.35.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 27 Jul 2019 23:35:22 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V3 0/3] nvme-cli: lnvm: introduce chunk-log command
Date: Sun, 28 Jul 2019 15:35:13 +0900
Message-Id: <20190728063516.17732-1-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_233525_060560_ED0CCF88 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <kbusch@kernel.org>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Matias Bjorling <mb@lightnvm.io>, Klaus Birkelund <klaus@birkelund.eu>,
 =?UTF-8?q?Javier=20Gonz=C3=A1lez?= <javier@javigon.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi all,

This series introduces a "chunk-log" subcommand for lnvm extension
plugin.  This command will send a get-log page NVMe admin command to the
given namespace which is for OCSSD.  We just can use nvme get-log
command with log id, but this subcommand is much more easier to use
because it gives parameters.

liblightnvm also provides nvm_cmd rprt_all command to retrieve this
information, but nvme-cli can do it also.  If you have something else
for this, please let me know.

This series also holds few clean-ups for the existing codes.

The last patch is introducing alias command name "geometry" for the
id-ns subcommand.

Please reivew.

Thanks!

Changes to V2:
  - Get the attribute out of the chunk type suggested by Matias

Changes to V1:
  - Add Signed-off-by and Reviewed-by from Matias and Javier
  - Squashed 2/3/4 patches into a single one
  - Remove nested-if suggested by Javier
  - Early return instead of goto suggested by Javier
  - Update print format for chunk-log suggested by Matias

Minwoo Im (3):
  lnvm: make data_len to sizeof() instead of magic number
  lnvm: introduce chunk-log command for chunk info
  lnvm: introduce alias geometry for id-ns for lnvm

 nvme-lightnvm.c          | 81 +++++++++++++++++++++++++++++++++++++++-
 nvme-lightnvm.h          | 17 +++++++++
 plugins/lnvm/lnvm-nvme.c | 81 ++++++++++++++++++++++++++++++++++++++++
 plugins/lnvm/lnvm-nvme.h |  3 +-
 4 files changed, 179 insertions(+), 3 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
