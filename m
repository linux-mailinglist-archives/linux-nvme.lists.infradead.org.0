Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8775D1BB80
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 19:04:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7XDx0DJofjwgtRpCQqVHqpXuu3x72T0jbntdKK520SE=; b=cWKmpHc0/0r+1B
	dCnAEF7oYN9xoeJMTOJ/qZGpO9As/jru85pGY0qQ0HcH/9ZIW3VGXf7iYT4EiYLBGdouqaXmnYUgv
	w61ZaKVSa3D+4V9owLsoZ3++uNipjibW0x1Q/3F+5Y9SZJRRQMKyf/PN99vQCLwvwHDpA2Cmwh4VT
	UbBvS07Lj8UBrI6L3hxtQ5VngvSKr69IqFiNUtUCsNy3l8ClrjoN0aWK0z6QzfYQ3TxfvgvSacDYs
	DhZEmIuaXfTMIPaSFj1hr234ZN/IEM7WGai82bm1Bth7lNT6yMLl4hcbn0lhW20Y2uNGXOawF4wuo
	6uV/0YFo0/WJFQUm52ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQEN1-0003dh-S1; Mon, 13 May 2019 17:04:11 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQEMv-0003cl-Iw
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 17:04:06 +0000
Received: by mail-pl1-x634.google.com with SMTP id a5so6763408pls.12
 for <linux-nvme@lists.infradead.org>; Mon, 13 May 2019 10:04:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=moRYcImRcARXKXE3PcsZsquF4dTO1WF6rhPkB3Veo94=;
 b=VOZ2A9+pYpMnMV0yHZvKgHCLse/3rgouVukZ7727Hy8BFhAY6gfYOlZUauRKPHSxgs
 Q8b11OZpP63FM0ahxlyASGOcrZoxGkDRqqVGzxHlB8mzgI/Po5LyQfu+yUtCSeAOGKfH
 QC2WtdAcqJvJjD7SFwofXh5MzY9zRkF+n9MermIZCAQoKiSr03L2a6K2+dCR40WT9a5Y
 n0DdX0cNCPtlzZqChewkhA/SKKOD+H6xLwUyJ+hd5uiiSp+TkLlHOIVda+rzkD9HC+3M
 F94DAB6vlHPzBccZe4dy9tXZvdZKE/BehlgxA8Wp2rT0nhhmBjTqNEE9JONSPDMys7FL
 0Nmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=moRYcImRcARXKXE3PcsZsquF4dTO1WF6rhPkB3Veo94=;
 b=jvk9BBSUpWUqPxxQEUhERyB4ueTkelfHpUd4TxAohR7VvA+3eM/KrYpm8dCkc5NCir
 XtcII09ixNc3k+u/2MUWR1zW78aDKCZoqmabVMvaTLD0GUyDbZ1XoHAYzM6tVP5C/J7O
 WsZ/hASSWLWKgsxQYhvZ56K/FOY0aCZMTyS9f//b8X93XAo4za5Bg0G6XRPtcH6ulGZg
 rEjptggyqvzBoPTpwF5zPyYtKZWxYAt85QLW5Tgw9MhxkhdyjRxdQ8F/sYxmrOR90Gut
 P4jQgyy70enIS5xEscTB63uquPvFEkaEEQAomypRtGf4VGagdaZYfXhDNH5jsMv+T5Er
 W+4g==
X-Gm-Message-State: APjAAAUKs6Wp19R9rPTFa0R2kqWpBp53Em2dnCdTYfyoUROqRrcsYCgz
 oY27Hh2IiwNbaNMRUV+YwAhgDj3vzKI=
X-Google-Smtp-Source: APXvYqwnZcIg1XWAMOhWYi00u7KnfwszsQU9g1tLiMqhMusSFiDMGKbyxE8cz1z/C1L4cthSpPO6Iw==
X-Received: by 2002:a17:902:442:: with SMTP id
 60mr32740948ple.107.1557767043892; 
 Mon, 13 May 2019 10:04:03 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id f87sm21116559pff.56.2019.05.13.10.04.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 10:04:02 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V2 0/4] nvme-cli: Introduce nvme-status mapping with errno
Date: Tue, 14 May 2019 02:03:38 +0900
Message-Id: <20190513170342.9497-1-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_100405_629460_38D9FD89 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:634 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Changes to previous C1:
  - make switch-case inline in nvme-status (Chaitanya)

Minwoo Im (4):
  nvme.h: Fix typos in status code values
  nvme-status: Introduce nvme status module to map errno
  nvme: Return errno mapped for nvme error status
  fabrics: Return errno mapped for fabrics error status

 Makefile      |   3 +-
 fabrics.c     |  24 +++++--
 linux/nvme.h  |  10 ++-
 nvme-print.c  |   4 +-
 nvme-status.c | 147 +++++++++++++++++++++++++++++++++++++++++
 nvme-status.h |  14 ++++
 nvme.c        | 180 ++++++++++++++++++++++++++++++--------------------
 7 files changed, 303 insertions(+), 79 deletions(-)
 create mode 100644 nvme-status.c
 create mode 100644 nvme-status.h

-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
