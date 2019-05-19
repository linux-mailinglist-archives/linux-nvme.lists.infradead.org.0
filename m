Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9892285C
	for <lists+linux-nvme@lfdr.de>; Sun, 19 May 2019 20:39:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eUY5fq6D5ODEvUakdqqIRm/tvtk+d8uTdt/TSTbVUmM=; b=WK/VAtvAoRpQo/
	jPV/bSKNcnDLv3BvHOA0dvwnbWj4KFTQPoQkVJLre0UAMo+FiHidxc6rk4nAJ7kFP2NzCtDrHpgK/
	IU7yv60HkNz0C5nyoiC8+wkBKjPS4PETu5FD4OdoGxy4ZSpBbaPEzRLBFdELfDfOknDy+VdZA8oAu
	0U705jP249/eNRa9KdSe4EPd0Z2GTLXbdOiIbrNmca+m9KdYc/ENK16VCdNZ21qiiuXwgw1ZpfSM3
	LDLZkIqDWmKcLGrNJFMCrUah+PdYXvNCtBIPKZUYqNeVf0a3NlCca84ksnuMCjhwzVOgj3bVBJA3w
	XblfNtjn0XrPzxcpZxKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSQiV-0001k7-Tp; Sun, 19 May 2019 18:39:27 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSQiQ-0001jR-74
 for linux-nvme@lists.infradead.org; Sun, 19 May 2019 18:39:23 +0000
Received: by mail-pg1-x531.google.com with SMTP id c13so5680702pgt.1
 for <linux-nvme@lists.infradead.org>; Sun, 19 May 2019 11:39:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dgyvlzsGmy0/cMrX/bhgCjlohWQ2jRYqRqyguUCvCBQ=;
 b=BOqoAUBFGUMjsikarqgNvUF2Q3MOJ7Y++AuJ2Kr48sYcmRUIHbW+ilJCYN477EH5hA
 vMdGr7w/jjPWKWOzfhWzKrD57jaFIh329ecyUnyHPmDTn6W4Q6oDchjNk5qdJOZI5MC5
 ZlWt+EK5n2yKVwU82+KA1DfAMKeBWHd8ISgYxdyNhP4P4ayLF0WgO4FbaPwoUeUsszli
 nKcFhRdPinbCYIY6U6NBB6pCDUmiSQ/L1LP+3C+MAFjkeW+xSXkttltoarB4ydsSUIyl
 s9kiFyobCjc7sLfXicrwdecV+HRs17IXoVr0NnEreARcx3MhTGnSzAFQ+5KzrydmMMxd
 wF9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dgyvlzsGmy0/cMrX/bhgCjlohWQ2jRYqRqyguUCvCBQ=;
 b=Gsl8WuEWoijZlJ8wOVmfIR+JzhU1Kak1azTYBgdTpfizVfPbw6kTnOd5hl1s36wOzH
 5YuzAQ8nHfjLT7zxXAueUWRuxfGkdi9GdtXd1EADH1AyEtpk8GYxvLOqdjjgYbQ+v4L/
 eeV8H76Bs2j8jIqyRBUmQodZ9LBQi5YGI04FJ+0N72KDhsn/sGJjkLgpiXaF2fST8Ss/
 1Mph0iiPK5SbrHaNe1tnoUmjJpwLSWIj6xb9rv0277UqmSWAWOjN3QUbWpidSQBk26+p
 Q+u8gTA6CIRcTzkTJJuS4VSei66ZBKUS7vvBpNYOOAh62eeY+p5inukbP/CHuW4X+VxB
 HqWQ==
X-Gm-Message-State: APjAAAXPWbWM7xnnxVZqVDSYfuPwS5s7IgP792/moG61HOzimBqfn+Eq
 EUL5/epQ+7NPrqPmiToyCg3XZ7Sjaw8=
X-Google-Smtp-Source: APXvYqxrn6AKSxVyPIU7WqkySiCbxKPNA9DSiZDyldzmtsg60qDR20VuahT6mdjPoQfJQldMJuLc+Q==
X-Received: by 2002:a63:8342:: with SMTP id h63mr72312408pge.251.1558291160624; 
 Sun, 19 May 2019 11:39:20 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id 1sm16513360pfn.165.2019.05.19.11.39.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 19 May 2019 11:39:19 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V3 0/4] nvme-cli: Introduce nvme-status mapping with errno
Date: Mon, 20 May 2019 03:39:09 +0900
Message-Id: <20190519183913.3493-1-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_113922_260500_E741A90B 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:531 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <keith.busch@intel.com>, Minwoo Im <minwoo.im.dev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi,

This patchset introduces nvme-status module to manage mapping
relationships between nvme error status and errno.  It cannot be
directly mapped in 1:1, but we can figure out what kind of errors
happended by the return value of nvme-cli.

NVMe status fields are 16bits to indicate, but UNIX return value from
main() will be parsed in 8bits so that we need to do something about
return value to indicate nvme error status.

Please review.
Thanks,

Changes to previous V2:
  - do not overwrite the err local variable, instead returning the
    converted errno mapped directly.
  - return ECOMM in case of linux internal err which indicates the
    negative values from in the middle of the subcommand.

Changes to previous V1:
  - make switch-case inline in nvme-status (Chaitanya)

Minwoo Im (4):
  nvme.h: Fix typos in status code values
  nvme-status: Introduce nvme status module to map errno
  nvme: Return errno mapped for nvme error status
  fabrics: Return errno mapped for fabrics error status

 Makefile      |   3 +-
 fabrics.c     |  18 ++++--
 linux/nvme.h  |  10 +++-
 nvme-print.c  |   4 +-
 nvme-status.c | 152 ++++++++++++++++++++++++++++++++++++++++++++++++++
 nvme-status.h |  14 +++++
 nvme.c        | 112 +++++++++++++++----------------------
 7 files changed, 236 insertions(+), 77 deletions(-)
 create mode 100644 nvme-status.c
 create mode 100644 nvme-status.h

-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
