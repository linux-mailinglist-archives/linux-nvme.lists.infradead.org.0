Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9B428053
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 16:58:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Cnit+4t/z7Nie/ODOiS1AL3BN3nGAgnnaDxxIp9w7us=; b=kjFuIU5Ap3FcNh
	4SXcpuzIA6mbtknV16btuneDJGdZMhTBPDt8nshFe9EOUpTPU6PKwQG70luZTo/lzuR0cywH7jWYv
	2KMa5X0uDZvdNVNuDp8qCoZV2sQ9UiOODtcFu0RlR/MZ8EhdJVnt6022PCGZkDItraNfhmkyySQ/g
	0Dqf9cxLncv4LW33p4SO2Ew6aKh8FS8Cp1dxctsLFVxJmwr3r17wnElbuimXLQ511iqRW0yddKWeE
	08dRYXkoCa+dzpHkjiuV4tcqRWZKCsJY5OjISrNLdWU1TFJvPcTfHl9QqyoNTkzN5e0nfJIjFhzRK
	k0BdHageVoEF/wPTD9kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTpAf-0006sF-1L; Thu, 23 May 2019 14:58:17 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTpAa-0006ro-4y
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 14:58:13 +0000
Received: by mail-pf1-x442.google.com with SMTP id q17so3380714pfq.8
 for <linux-nvme@lists.infradead.org>; Thu, 23 May 2019 07:58:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xSU/px4+IFpLDC68O/XrDNqU2S9t8TMVrSr2jDEQnqA=;
 b=TLRuWouTE49vkaalOedeTMufoH8+GjnMIUeMbV2dNB73V+kEz5YYmPH5vXeq5jcDsq
 dW4A1ETTFud67RqDPVKr8fwqdwNWspe3Xf34sw7mijaz7E7XV46768QJ7Iksg62S+GYy
 6GA7fyUzYkZGpBhl3GGW+L7mtRHXjL2XlEwEndp+e0zC41oOcPesbup8bZzkXcM+Hk9j
 51NS4hhBhR68HPVdI+h+lwUmMl2w8xShcWF6O+LlZvdA4xgRsf8gYKhPpoAnhpG+8uYL
 hsDHlUP1OhFdcBk4aMASZwUjdoFmOejFYa4zfwr1vSWm+wHsgrOyMmQIsQ1NcjHZSX7m
 1KYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xSU/px4+IFpLDC68O/XrDNqU2S9t8TMVrSr2jDEQnqA=;
 b=pryFdyIMtytZGAbVBJ1A0f7a+TuXVXrQkydn+9/yYMuCcS1i6SRd+yaEjkMDgAPokd
 uSlh9shODEzqen+tDxnyUQpRuuU9vEnGzNRTGRpDJJAz67Z3cVYYeFGtULQSbpMymO+8
 JhvmXBRCv7/OAewGlwhgyV7lUqXbyBG/Z6qjPRSau1DCh+O+3kiXEABjPYUnJAbOrP6x
 W1AJ9UjD3EQe6CqotIkpXc+B++aBsPZQ5/D3UxFP/9wgoK9a3haZeQLMTM9++kinoxiF
 eFu6RbkbyV/YOZKJ09vRoyj7cryWg1T4YByFZhAZ+MmdmWCfXUQk7T7i/BcnJA2QcSPu
 f/8g==
X-Gm-Message-State: APjAAAVPM/j1EBHtREhIojYn2IIojWTiMN7mx6Gn/xizEx2ywHGaUnLg
 h4VgQMUh8imzI++TVUv5QPhtrsBrCDM=
X-Google-Smtp-Source: APXvYqywVwpkhBZEsmFBzYlN5SuJBNWzGwsA+bLVHiisu7DeRj22CJ8Al3c6wW3xR+HR/546lhj3vQ==
X-Received: by 2002:a65:42c3:: with SMTP id l3mr74150669pgp.372.1558623490591; 
 Thu, 23 May 2019 07:58:10 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id v4sm45946554pff.45.2019.05.23.07.58.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 07:58:09 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V5 0/6] nvme-cli: Introduce nvme-status mapping with errno
Date: Thu, 23 May 2019 23:57:44 +0900
Message-Id: <20190523145750.27425-1-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_075812_193995_8DD7FA6B 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Chaitanya Kulkarni <chaitanya.Kulkarni@wdc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi,

+ The first three patches have been added in this series to make sure
the previous ununiformed return type and positions in the subcommands.
Some commands used to return the negative error values in case of
internal errors, but some didn't.  Also returning in the middle of the
subcommands are not proper for the errno-mapping which is introduced
here.  The first three patches are going to fix them first.

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
  https://github.com/minwooim/nvme-cli.git for-1.9/return-negative-errno-v5

Please review.
Thanks,

Changes to previous V4:
  - Add the first three patches before introducing errno mapping module.

Changes to previous V3:
  - Fix to return 0 when given error is 0 which means success. (Chaitanya)

Changes to previous V2:
  - do not overwrite the err local variable, instead returning the
    converted errno mapped directly.
  - return ECOMM in case of linux internal err which indicates the
    negative values from in the middle of the subcommand.

Changes to previous V1:
  - make switch-case inline in nvme-status (Chaitanya)

Minwoo Im (6):
  nvme: Do not return in the middle of the subcommand
  fabrics: Do not return in the middle of the subcommand
  nvme: Return negative error value for internal errors
  nvme-status: Introduce nvme status module to map errno
  nvme: Return errno mapped for nvme error status
  fabrics: Return errno mapped for fabrics error status

 Makefile      |   3 +-
 fabrics.c     |  45 ++--
 linux/nvme.h  |   6 +
 nvme-status.c | 155 +++++++++++
 nvme-status.h |  14 +
 nvme.c        | 699 ++++++++++++++++++++++++++++++--------------------
 6 files changed, 620 insertions(+), 302 deletions(-)
 create mode 100644 nvme-status.c
 create mode 100644 nvme-status.h

-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
