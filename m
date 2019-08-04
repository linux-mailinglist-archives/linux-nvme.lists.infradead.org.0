Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9CA809C4
	for <lists+linux-nvme@lfdr.de>; Sun,  4 Aug 2019 09:11:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=75bEZCXx1oARHaIKOVA+Qy/nbbwUbWj/28EsbTKvPUk=; b=BT7
	5Em/8Nka3geUykWyIJMKXaFhzclwa7GMybWejhDIpKlF30OBlv+IwEoo0plW+kxl41PWjdaqU4Eut
	WSN46QehtGaLKhPdeJ1e46yZqdtlihEMMq9Ng4uyA7/XsQyTKPwZf59tY5ybxlttvEmLLd9zCEtwd
	Pt/TXephzPNTo3m+XQmZnDouyrqv/+KTxITMr/6Y+WPN1OOcfBrrwwnzednd7AybShEY6m/6llFKX
	31kdk3VhClRqwCCO8JL2+dp0GcWTOEUdKMkHDp163Wk71K4XXJo8fpqVuNM/XcrmAzLv1LJL8RpB8
	puX+TFweqCK+c6DmdfxUWkk2psi+G7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huAfQ-0003xX-Lk; Sun, 04 Aug 2019 07:10:57 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huAfG-0003wD-LQ
 for linux-nvme@lists.infradead.org; Sun, 04 Aug 2019 07:10:49 +0000
Received: by mail-pl1-x644.google.com with SMTP id 4so28230007pld.10
 for <linux-nvme@lists.infradead.org>; Sun, 04 Aug 2019 00:10:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=e1sWyeggBXIl3SFjMpQ00lDF37d9kKjTCfqhZMyIozI=;
 b=Ewl89YJKVKzwtdR8FcwGO+gH+jtRZvi8e3y1BHwSoAkfjKDcrA87VWaV67uwuRN5hC
 bJKfVU/Ldd6JOgVVMJ007dfOmgdO7MYT6FP7132mg3tNXJ/vuH16hBxZQ2d+dWTO5Hk7
 Gg/8jUjYQQAMmGod7PRJSHhx8a6raYbw8vcq5bULOZGvzhcqAl6bhC7hUM6ulAaWCKI0
 GKM46Xg62qBU50ngYaky0YOnD74dSLtYSrFA7PdQNIepU53Yxgeg547ou9bSgEta26LZ
 wXL3E9xANzUvdKKy27eIU+07+X5rcj1aR6E19tZ+n9Kod2Aqq98Wb0n8GzJma75X4I38
 D2Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=e1sWyeggBXIl3SFjMpQ00lDF37d9kKjTCfqhZMyIozI=;
 b=I9Sa+15XgkVeDSXqbf1blBPat7BlJmxj5PImqL6hyir2vrb9N0+xJlp1/e3dzUQe+n
 nuvEjsCmYguIk9r2M9Dh2CXPaV9UWqTmwIG+1oe2fJsencuBo6jSE7GVoOgTs3YAuFj8
 NVfK1pX0/xAr6u5Q++T/K3PDQxW7Ob5/ZKsbyjzGoalqj4gYpGZ0rjmIkPnqz9kTCgQZ
 DRpsSTxU+S5Bs911jfiVLLTZf7RPFdIMrzxHTfquMaV/lOK7JgRCW8wexRtIeAn3bii3
 Ihrp1MCFsumNA5kAKc7Xc+uMtx5yhhqAFnfypex6I2Ktma+IrCDw/iFIZt4LzKsqOKgs
 c1YA==
X-Gm-Message-State: APjAAAXYnDA8XpEvG0NHPlarnjSmNXfNkkYuuo23vpmvjryV3PfMkqKZ
 ys7x+ndtaGQCqj/S5hClHWonE01c3TQ=
X-Google-Smtp-Source: APXvYqzqs0t6Vejz1PkSpAh8zJoi+jVonAS0j7V6bQG02pISfcJ/fnrTa35d4gaNtcLwp9Bs6D/koQ==
X-Received: by 2002:a17:902:9004:: with SMTP id
 a4mr15222226plp.109.1564902640667; 
 Sun, 04 Aug 2019 00:10:40 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id p7sm88033964pfp.131.2019.08.04.00.10.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 00:10:39 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 0/3] nvme-cli: add Get LBA Status command for 1.4
Date: Sun,  4 Aug 2019 16:10:23 +0900
Message-Id: <20190804071026.16149-1-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_001046_729617_82C2BC73 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
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
Cc: Keith Busch <keith.busch@intel.com>, Minwoo Im <minwoo.im.dev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi All,

This series adds Get LBA Status command which has been introduced in
NVMe 1.4 spec.  Also it covers new fields in Identify controller data.

Github PR: https://github.com/linux-nvme/nvme-cli/pull/546

Thanks,

Minwoo Im (3):
  id-ctrl: add an indicator for get lba status capability
  id-ctrl: add 1.4 features to OAES
  get-lba-status: add Get LBA Status command

 linux/nvme.h   | 16 ++++++++++
 nvme-builtin.h |  1 +
 nvme-ioctl.c   | 15 +++++++++
 nvme-ioctl.h   |  2 ++
 nvme-print.c   | 49 ++++++++++++++++++++++++++++--
 nvme-print.h   |  1 +
 nvme.c         | 82 ++++++++++++++++++++++++++++++++++++++++++++++++++
 7 files changed, 164 insertions(+), 2 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
