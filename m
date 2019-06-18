Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EFC44A20E
	for <lists+linux-nvme@lfdr.de>; Tue, 18 Jun 2019 15:26:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jwYzayoziaCN/w5I8gCr+0CoSNKdKhygc9seSdhL9qg=; b=euSqHmMLnvbU2M
	vd23W26KFl9RHoHyHUg17gaLKh0OXGgZ7ozKgukwqx6pQ1So/pO98ekyIQMIClgLIrtAL1TlAIosg
	eBbBZy1rIlIKDiAgCWxawjlNWHcypi9QNXptdMNGuo0U/iUq90KfI0G42oEsjmgs1W9DhE4im2k0H
	Sn/mfiO0DishYX3na6bJqo673GUq4jUFzvI6NPLMWJcJv5rHtSl6rJQy7Zw3PiAiRsnfQCIqBaCPw
	rol+E+W5jSkH/VkRtufZ9bK43Qf/Z4uBHC3bwBoWXvrdaLF4TBOoiraKDZItcHHYQvSokSHa+SeI/
	Of/Dxzaekl6jQ47BACqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdE7n-0000LM-QN; Tue, 18 Jun 2019 13:26:12 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdDul-0006WT-8P
 for linux-nvme@lists.infradead.org; Tue, 18 Jun 2019 13:13:17 +0000
Received: by mail-pl1-x642.google.com with SMTP id ay6so3473989plb.9
 for <linux-nvme@lists.infradead.org>; Tue, 18 Jun 2019 06:12:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gKb6WbczI3SzR84qK1n//1jTjq8dB9axxwKjz5o0AZE=;
 b=ejY5qcmSehoVcsQhoG4IkdBHfXfAy+WlG2vT6fHWY2s2gIn+zWfX1MgH57ErZhAa3Q
 JVq1UFPctQSepYj+Ts+n5l0DGQ9LtIrb7Rkynds/NmNLjBDvF8y4fkVDBVi0I1YVCULu
 YgkYypNbaXd661NfKsBQNKlB+LZjhgkipPCaexcpqVooDxJyqfvO9mlJ8ENZwzI4lI4i
 v2/HUxPe/M1y5rF7M6MyfXa4/sLYSkkiB2YDPznGW5IMgR6errfV63aEovm9o5cOOG/5
 rufPFM/rMw+PBr8mqh3rmnoMZuaf90voJv3MEfiitu0eoeEu+SNIXGMaQsTzAwPyB4ib
 nbJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gKb6WbczI3SzR84qK1n//1jTjq8dB9axxwKjz5o0AZE=;
 b=QbtoZ7eJEWfPoPTH0mLm07aUW67efTVxxxjO/jL4msOEXlRRRlsCnmfPHB07HG9sY5
 3elFVLcnG9XNBYho+jrzjVTGz4gZXjh8QsC0eCusSRbmhkBwxcdsk4YvMzPwoWYDraig
 VXF6soEuTzHXv+on4Xe/mjx3ZutzxZg/mGywiAvULrkUGdpXBDjYs0kzIVuidbkiD/uE
 m/Ssn1/BTb66ftiWLyBUiM7uPJWZbp/6naQvtIRpGiL5ecavJG/R5rTtW60x3VXXlWWs
 AahR62eOywtunau78oFey2eh2TcNLVrXxZsCQ2JCfQLHrVskeft/ylVoABmzC8aZoGvW
 1LkQ==
X-Gm-Message-State: APjAAAVziucu1KWRUsFyRJ1KJgkoe7LJpDJt1LESboXFVHKbThBTzVFH
 AUa4fERUt2KC1WDkDDrewGzC1p2/yEA=
X-Google-Smtp-Source: APXvYqwQuoOlgE/v/FCHjGbBgq1xeWzAkhj7VGJTJ9zwFy3ZOMwV++8jxFvXambJx4ovQYJ3/FMUDQ==
X-Received: by 2002:a17:902:112c:: with SMTP id
 d41mr2249748pla.33.1560863549912; 
 Tue, 18 Jun 2019 06:12:29 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id c142sm21663733pfb.171.2019.06.18.06.12.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 06:12:29 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Keith Busch <kbusch@kernel.org>
Subject: [PATCH V7 0/7] nvme-cli: Introduce nvme-status mapping with errno
Date: Tue, 18 Jun 2019 22:12:09 +0900
Message-Id: <20190618131216.3661-1-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_061244_027856_9DE4A44E 
X-CRM114-Status: GOOD (  16.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Keith,

Now it's v7 patchset for the nvme-status mapping with errno.  Chaitanya
has reviewed for the first five patches, and Sagi has suggested to
return an error for a case that numrec is different.  The 6th and 7th
patch will make what Sagi's said.

This patchset introduces nvme-status module to manage mapping
relationships between nvme error status and errno.  It cannot be
directly mapped in 1:1, but we can figure out what kind of errors
happended by the return value of nvme-cli.

NVMe status fields are 16bits to indicate, but UNIX return value from
main() will be parsed in 8bits so that we need to do something about
return value to indicate nvme error status.

This patch series has been tested with:
  - nvme pcie device controller/namespaces
  - nvme loop target with nvme-fabrics

The branch on github can be found at:
  https://github.com/minwooim/nvme-cli.git for-1.9/return-negative-errno-v7

Please pick this series.
Thanks,

Changes to previous V6:
  - Added Reviewed-by: tags of Chaitanya for the first and second
    commmits.
  - Added a new command(6th) which makes it return an error when the
    fabrics discovery retry(10 times) exhausted.
  - Sagi has suggested that when numrec is different from the expected
    value, then it should return an error.  The 7th patch will do it.

Changes to previous V5:
  - The first patch has been updated being without an whitespace in
    front of new label("ret") in a function.  The other lables added
    followed the existing style in where it belongs to.
    The default style would be great to follow the kernel style which
    is non-space label, as suggested by Chaitanya.
  - The second patch has been updated to have "out" named label just
    like the others in that file(fabrics).
  - No functional changed in this version 6.  Only style change has been
    applied.

Changes to previous V4:
  - Add the first three patches before introducing errno mapping module.

Changes to previous V3:
  - Fix to return 0 when given error is 0 which means success.
    (Chaitanya)

Changes to previous V2:
  - do not overwrite the err local variable, instead returning the
    converted errno mapped directly.
  - return ECOMM in case of linux internal err which indicates the
    negative values from in the middle of the subcommand.

Changes to previous V1:
  - make switch-case inline in nvme-status (Chaitanya)

Minwoo Im (7):
  nvme: Do not return in the middle of the subcommand
  fabrics: Do not return in the middle of the subcommand
  nvme: Return negative error value for internal errors
  nvme-status: Introduce nvme status module to map errno
  nvme: Return errno mapped for nvme error status
  fabrics: return error when discovery retry exhausted
  fabrics: Return errno mapped for fabrics error status

 Makefile      |   3 +-
 fabrics.c     |  67 +++--
 linux/nvme.h  |   6 +
 nvme-status.c | 155 +++++++++++
 nvme-status.h |  14 +
 nvme.c        | 701 ++++++++++++++++++++++++++++++--------------------
 6 files changed, 641 insertions(+), 305 deletions(-)
 create mode 100644 nvme-status.c
 create mode 100644 nvme-status.h

-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
