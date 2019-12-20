Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E09EC1273F3
	for <lists+linux-nvme@lfdr.de>; Fri, 20 Dec 2019 04:31:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WIVCDuTng/n/RprPFnFxvPqThLhXbtoI/3hB41EIldA=; b=H+JyKrt989pa7D
	0of3Xv8dkHnlXrsKk5BQ8BHe/ENoYrWAbtHidy8lEDiGILX5mGghSCle5PjxFeGn8yuEu/PMpns5Q
	ZXyZvceSCxuv4US1vQcjY39K6TdMBAxxPac112CPZI9J8lcon8eSS72HlPJILq532JrGasDuzDitG
	zc6EHXBfXVFmO4l5RFijY/gGOqVm6exf0JfKvIAxPZ5hd3k14/RyRN6mVe9CE/Y/nQjFbDp/p2tBa
	8ehGedWt3NGEm8T0NPOJHrpy6AkIebNu6CHiHD3Fu9AF6q0IRiTfv3ck2R1zaedAERdHo5cMQxI96
	KixoOvmof8vCGyOKkqsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii90m-0006QZ-Tl; Fri, 20 Dec 2019 03:31:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii90T-0006F0-VL
 for linux-nvme@lists.infradead.org; Fri, 20 Dec 2019 03:31:15 +0000
Received: from localhost (36-236-5-169.dynamic-ip.hinet.net [36.236.5.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E1C9624680;
 Fri, 20 Dec 2019 03:31:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576812672;
 bh=7ooy/GLZ2C0fwuT0ifccnwCVOOvKpGvdYciGjSUO8wQ=;
 h=From:To:Cc:Subject:Date:From;
 b=PxtK94C9/HqjMKLJGdQ97w4dn/v6X8YG7pOlu4mERkqrrz7f63HRYAVbWYclZdBI1
 pnxxmN16T1HdCZV+TYK3ewa9PEHTaodW09CphS1NGz1KnvPSa0qJGF1jQaZdw/L058
 nGBWT8iEJU4JUM3UfdSBt8uFpI/xwx8xEa6uIUx8=
From: Andy Lutomirski <luto@kernel.org>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 0/4] systemd ID improvements
Date: Thu, 19 Dec 2019 19:31:01 -0800
Message-Id: <cover.1576726427.git.luto@kernel.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_193114_038517_E50C922F 
X-CRM114-Status: UNSURE (   9.45  )
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

Hi all-

This was github PR #594, but Keith asked me to email it.

Please review this carefully. Also, if you merge this, please
consider changing the 'luto.us' bit to something a bit more
sensible. Maybe com.github.linux-nvme?

I'm still dubious about the way that newlines in the ids are
handled, but my patches don't change that per se.

Andy Lutomirski (4):
  hostnqn: Fix the systemd-based NQN namespace to comply with the spec
  fabrics: Rename nvmf_hostnqn_file() to nvmf_hostnqn_load()
  Use systemd-generated hostid if no hostid is configured
  Do not install /etc/nvme/hostid or /etc/nvme/hostnqn by default

 Documentation/nvme-show-hostid.txt | 29 +++++++++++++
 Makefile                           |  4 +-
 fabrics.c                          | 68 +++++++++++++++++++++++++-----
 fabrics.h                          |  1 +
 nvme-builtin.h                     |  1 +
 nvme.c                             | 15 +++++++
 6 files changed, 105 insertions(+), 13 deletions(-)
 create mode 100644 Documentation/nvme-show-hostid.txt

-- 
2.23.0


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
