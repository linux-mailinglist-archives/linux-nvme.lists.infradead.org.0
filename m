Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2150D15248C
	for <lists+linux-nvme@lfdr.de>; Wed,  5 Feb 2020 02:57:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PreJmagkVjYcJDZhF9No8PwZ3D9qqTri7x7TygjPBrY=; b=TmyfeYr46y2f1i
	zeTQAiEQKO6HUNJqv1U4V10u6J/pyvNdt3J5cDZT6H/fUgjs7ZFcFZf4dS8qDaOGhk/uNNczl+Ph0
	jaoEofa94garQwqDL3lAGcS4jYl1H3IFlS6vdsE3NpCaeocH+1tEYqRrT9TlvmtCzdjI1yRrYQJiX
	kvK8YH/OPIMkiv/n1xSmLoRSfGLbU++TiVZ9p1jAW6NA5a+IbF73StMmUqb6JE7X9FGFaYhpDPxKZ
	nRiE19i+VGLiHgYs9s1daW59BkEsbgMaBpsdk2teyyoIfh+iXc17k4NU/1BPJGwQBqztoKHp7bmhX
	Gjzhz7SiSHWtQqpYR49A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz9w8-0008Fr-1k; Wed, 05 Feb 2020 01:57:04 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz9w2-0008F6-Nq
 for linux-nvme@lists.infradead.org; Wed, 05 Feb 2020 01:57:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1580867819; x=1612403819;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wYb2S2L8yaC7M1Lu5Zgxitm/3T7jX3UQfyM+Fb3SEUs=;
 b=Q17n48lxcP/3A17Ku/8yfvQ5lLGWjfbjrehrbaErfTHaV/NWfM5/PzTq
 AxO89OzMEU9arTzVy5KT4EC+OZ3Wso4ySajNGSmo98IPGQcE9Wwoz8+VX
 cJw/3n2vqEUethcyRB53PDQFaOvGhHZkHZzMBbwr41hSBkwTVN+uiLKJc
 3XSv1JoKJk08ELI1p0jzCH7prDAQNdUJYTg07UDw3Ksei7VLrq0x16edm
 xt+nDWtVVaEtFl3OPd4QLMCExb6ZB5IZDYzckFWugFtzQYZfZskqdU/sl
 BwFXzRsTwXV58RW9gQ796nci2EExXfztxjqRMWkBqGQCxstcq26KO5roK Q==;
IronPort-SDR: 5K1Pptm7CXQ39VIyV6LaElqgObBdc1ZXfUlawbh/IpKDSpax2b9/9qbylbyLzk3Tp6G6NBttos
 nW2Ry5n83N4rzeHQsnug1cH2gVG8JRxopvBfRvd3Tr9B9oMj+LplIul9gq6AZkX2z1sP2LYwCE
 8YUmeMSVbMFd3LS8tyFIQpFrxyJABnd9BxL9YmGL6Fa5vWOi6XJopKk0hUcJrr3QSSSEGQR4OJ
 DOpdaQcUu0a6eGlEiRHV0kCf7QPqT2Z1vBLg/vwAdi9DARdwtQkREtxONRW1i4yBAKaPoFYUfn
 aAo=
X-IronPort-AV: E=Sophos;i="5.70,404,1574092800"; d="scan'208";a="130576279"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 05 Feb 2020 09:56:55 +0800
IronPort-SDR: HVm9hOxY3Qi33jzLyFTln3wXTqRCRYIv7xnhrlem6KzDGoB//JTsHc16rQmHSUcDsAj16UCEIY
 A5QvgwjUcNWm0wyJEqTJNzVPImN12x0N9zGvYQR+NxcHoJ9mvBsQ09EPPXNIY1WcQ53zpBx+/v
 26q7BV0yWs9xEsQWrdTxH/dowk1NOlT71viS6jYYdYzSi2Ecokv4EI9FvPqweqkmnT/K2cyzZk
 /fJ7VZOFZDvNyyXEe0otZ1ka8l56d5GtOBn5k6C6jFi74KDrdK7WCi0wl7OzUusXrMnYkPHnN/
 z+KZnaqXBQ+f48P9TRODTb+L
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 17:49:57 -0800
IronPort-SDR: KiVqcfr0Q06yA1Kb79/xN4lmkQB5XJrr777vFTJUTvQBH4qyGG3+Gbkv3RMzSGfk8lYPNtgHnH
 rnlxRY7nis5WN28kGEPuiBqf8IoqzK0y8tm6X0QEyIOtDVDefOJ/J7Q+hunN4IA31+PF283snF
 ecKnN60VxQOHsAB99xYkACDRvpFs5d/HygSRrO/eTq/AEHqAC0lGk6dttew6OUcukZXs/BCUlg
 acQc3NUhuUONYwg7zUt2ndLhTP2bOYpVTec0YHTLw1Uo8Qs6ZJDXwb0SyidDNEddH9Nxos6biM
 uBg=
WDCIronportException: Internal
Received: from iouring.labspan.wdc.com (HELO iouring.sc.wdc.com)
 ([10.6.138.107])
 by uls-op-cesaip01.wdc.com with ESMTP; 04 Feb 2020 17:56:54 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 0/2] nvmet: bdev-ns buffered-io and file-ns write-through
Date: Tue,  4 Feb 2020 17:56:48 -0800
Message-Id: <20200205015653.21866-1-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_175658_844488_865318BC 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: MRuijter@onestopsystems.com, hch@lst.de,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi,

These are last two patches which are based on the discussion with Mark
(CCd here) along with cntlid and mode.

This patch series adds a support for block device namespace to use
cache and file-backed namespace to use cache in write-through.

Please have a look at the respective commit logs for more details.

Regards,
Chaitanya

Chaitanya Kulkarni (2):
  nvmet: allow block device to use buffered I/O
  nvmet: add file-backed ns write-through support

 drivers/nvme/target/configfs.c    | 72 +++++++++++++++++++++++++++++++
 drivers/nvme/target/core.c        |  7 ++-
 drivers/nvme/target/io-cmd-bdev.c |  3 ++
 drivers/nvme/target/io-cmd-file.c | 39 ++++++++++++-----
 drivers/nvme/target/nvmet.h       | 15 +++++++
 5 files changed, 125 insertions(+), 11 deletions(-)

-- 
2.22.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
