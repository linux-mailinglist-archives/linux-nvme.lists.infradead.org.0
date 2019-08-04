Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB2F809D9
	for <lists+linux-nvme@lfdr.de>; Sun,  4 Aug 2019 09:51:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6H8DaK0wU9dTKnYtatplvMejZy9BXoB6RYgDPK6F/vk=; b=OKP
	pJ8v1bVLZoJSsOnErOh3kSh8PDmgsBEocaBhqyHctB2PRCwb9LBqvGO7yI5HDRwVec7B0WcqgfuXA
	y4E9iEemqiJRCN3VQC329XITLJqZCHQd8QxQk4RK57uoBdNeq01mWYXqIvHtXKSdXPE+SlXdGqK5G
	LWE8Z3bpDc0LKyrpmZ6vzyZiVILeyErTv0cf/YRzlyBz9ov5bLCOUY7oC7NgfwnCBIvcCWgcNyd61
	+XByX++EY6ny34OYuyqltW/jxON/yeksYXQpbdg9sAyEdQFhcDWPzEW+bG6W2/e78Wr1J1KZD0pnJ
	ESYIneM4bRGhayjXxdWsdDXR+YZo+Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huBIM-0002Fz-Pb; Sun, 04 Aug 2019 07:51:12 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huBIB-0002FS-0m
 for linux-nvme@lists.infradead.org; Sun, 04 Aug 2019 07:51:00 +0000
Received: by mail-pf1-x441.google.com with SMTP id u14so38088028pfn.2
 for <linux-nvme@lists.infradead.org>; Sun, 04 Aug 2019 00:50:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=NTwoBraAiRZ9JMXonRlPKdpjQD8ht3Bc7ZqMWaGkLF0=;
 b=mBXJ6Q20xW3z/x/l9782TWI35b7RdD7wj7i3ig0WK6zTCL4xWHYFyxTUdYcu9dVAoM
 DFK+UlU48nJxNb2ozyKGvp086Z/OBIgWYXhNVYX+VebOjxLDFB11MlWTMAV46XaBXp8t
 vYj9vVIMvlivy6dXWR9jn3rPJgmb2yiBlNeD6Te2bxptORGWjjGXKwvVkngU3ex2fQ3w
 bNsZtoH48Yx89F/ZoHo8ZwGpHQh5qG7JTQ6UxqELO2ToS8/kVzCK81AtGMVqrRGRUJv2
 jOYPIUnEDtZJSbgDbjH1JSvlzMGjvA9Z+IWfRt6AVaF15h1naCu6LLvopsH5ZHqPwrKs
 cDQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=NTwoBraAiRZ9JMXonRlPKdpjQD8ht3Bc7ZqMWaGkLF0=;
 b=MrJHw/naVARkme9Ec8m4YwZhLSgDGO7OXCYBTsz+0zeoDSgzeeGKrFawM2yXxVnkx5
 ix4WD9BIAlvn7jyfxE/GcjuXWbcbFGCbofAzL8rd3bEbsPL2Xf7QxqyAIZqmVObERcMK
 ZoBYQGXyW6IJ5uLypbNeqvQq8RnGs6dRiufNIXwG5RhNx284Fhn56sAZBKnQmbIejp0O
 Q58VC0joad+wqsP9hvpO06LEr+SH2XLZY99LjpPDUFWB+W0/3wh2Zf+QYx9NzHRFn3Iv
 kbVwcxL6xp2MtNEXOqF13j1c+eyPFr0cCNsBkTQkWtkagutqlGBGLf487VY7p6c3U/P8
 Hkww==
X-Gm-Message-State: APjAAAUpdpnImJB56BpI7XLEt5hPyUFokYOfw/Qoe+YnXVnxWcdLpiSd
 V5bxos/hnVuv5D4/kbszKOnI3ZuLbTg=
X-Google-Smtp-Source: APXvYqxrDdCnxCTOeQTHc14yrX77hYMSgChJ/fx8ZM+oGsTaQGqEYuSJA1aOBH/nXV80cffKICZr1A==
X-Received: by 2002:aa7:9ab5:: with SMTP id x21mr66880460pfi.139.1564905057755; 
 Sun, 04 Aug 2019 00:50:57 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id i126sm94091652pfb.32.2019.08.04.00.50.55
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 00:50:57 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 0/4] nvme: add support for Get LBA Status tracing
Date: Sun,  4 Aug 2019 16:50:46 +0900
Message-Id: <20190804075050.14642-1-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_005059_088407_9579858E 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi All,

This series introduces command tracing in both host and target side for
the Get LBA Statas admin command which has been added from NVMe 1.4.

Please review.

Thanks,

Minwoo Im (4):
  nvme: add Get LBA Status command opcode
  nvme: trace: support for Get LBA Status opcode parsed
  nvme: trace: parse Get LBA Status command in detail
  nvmet: trace: parse Get LBA Status command in detail

 drivers/nvme/host/trace.c   | 18 ++++++++++++++++++
 drivers/nvme/target/trace.c | 18 ++++++++++++++++++
 include/linux/nvme.h        |  4 +++-
 3 files changed, 39 insertions(+), 1 deletion(-)

-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
