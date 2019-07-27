Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ACF977B24
	for <lists+linux-nvme@lfdr.de>; Sat, 27 Jul 2019 20:42:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hylOc9KFWDUgoU47iIUWxfN8oFImybTwsj5ZKGBLLL8=; b=FO3CzGhNPqsXr2
	S1C2msTWMTEa40ZGU/xUCDZIPCr59Y9pI1p+zkN7e+i3tPp79t/lfL6WgFA0nYwuCqnIr62v4Jbip
	rBxz+dkgLK2hRmdKXHaw57c1CVvJLv6IP4h46Gf/b8bhpXXpt5pjHyNik7idgMokA1YAObaQzdPKl
	x+i/K5dSnMpBSrzk/2RVnSZXzauTvWb2/4MEo3JT8Buwu31f5e7OT+dU0C21bIDaBc4qqARVWpEKr
	B8SUzKCl/TlgEhdSbO1ewf1hNBIINmpL4F52h5m/76YbkhPNM8G8pwbwPCy1a1hGtEtbjmeW+giaN
	Ft08twom8pokZY5T8IYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrReB-0003HL-Vt; Sat, 27 Jul 2019 18:42:24 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrRe1-0003Gg-NK
 for linux-nvme@lists.infradead.org; Sat, 27 Jul 2019 18:42:14 +0000
Received: by mail-pl1-x641.google.com with SMTP id az7so25928738plb.5
 for <linux-nvme@lists.infradead.org>; Sat, 27 Jul 2019 11:42:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xd8OGmZVnBPhf7ZYUP0WNmlWpBX2X81LFZe4nLil2mY=;
 b=W5dnaUAech2Wb08+d/i/CMFBRYEs2bqrcO5JrsK7RJBivX6bZcm5yY9kAF5t4phhhl
 ldjOszQ2vb4b7o5v9uDuCni6CFJLBqY7yesSA/I4V+f+A+hFn7cQ5z3PYof5WHwDeW0P
 hi1O8togD0JBPxcAG10an5ddnXO8xO+ti2t0NeqZiDD5aqLQOqtLxU1CzsHqpGDD4lkL
 QEdEI4xqrCm1EVEYOaArvgW6Bugz9DIf4s7a2gSlgroYwWLTfJ9EClHpxa23QcQPxfQA
 KstSiOgCmvMh42oTrPBDLLY/Dsl7ayDbt2pWacH8FcxqC2FB0Md3fZqegAriMpGtY55T
 bIxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xd8OGmZVnBPhf7ZYUP0WNmlWpBX2X81LFZe4nLil2mY=;
 b=TtVQv1CWcolkysBk5GVOdFpY9nVe8nTYVQthKQYKmAgeITki9p+m/X/9rnoFQsnY1e
 V1Wsm04Qyf1EhI0C24T1YBrkEK+GXEW/QWVWtBp2WUaZLZ7H9s4NUHwxjLqf4SDHyHGR
 XeVMXp4PHi4A2msy9Ossu5TkV896zblcrQJ8wEf7cdc3JZy/3JmWDIWFhw8ibewkyhWi
 w1HYORYM528StShz+3FCA8qMiHeKb0vHTr/m1QOk1Lz+DHIiBhRSCQ05kfJ1WfLNaIqf
 xmU4VPL/y7AUW3ZtWRmt4OSTGgL0F3sI6ppwOGqhJCCYAohgfWWGc/k5iB+iURvGDP38
 3/AQ==
X-Gm-Message-State: APjAAAXYI+ThO6IPJJhUGnBQucfpX01+qULAwA+KJQvXuM4MDAv1Lm7W
 bZgAtMRRbZrsD/Oi1Nym71+QAckqCY0=
X-Google-Smtp-Source: APXvYqzKt1Cnfw9sYy7OdvQ4tFcF12Bhaw3AesGNrTNCiIBSvxIIO8O/ITj9fvSBk7rXiYi8L4SqVw==
X-Received: by 2002:a17:902:3341:: with SMTP id
 a59mr12087009plc.186.1564252930543; 
 Sat, 27 Jul 2019 11:42:10 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id m6sm57733367pfb.151.2019.07.27.11.42.07
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 27 Jul 2019 11:42:09 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 0/4] nvme: update way to get qid in trace
Date: Sun, 28 Jul 2019 03:41:51 +0900
Message-Id: <20190727184155.18014-1-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_114213_786355_B4CCFE48 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
Cc: =?UTF-8?q?Javier=20Gonz=C3=A1lez?= <javier@javigon.com>,
 Klaus Birkelund <klaus@birkelund.eu>, Sagi Grimberg <sagi@grimberg.me>,
 Jens Axboe <axboe@fb.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Keith Busch <kbusch@kernel.org>,
 =?UTF-8?q?Matias=20Bj=C3=B8rling?= <mb@lightnvm.io>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi All,

This series is mainly to support trace for lightnvm commands.  To make
it support:

The first patch just simplify the exactly same operations in short by
have queue_num directly.  The second one modified the condition of how
to figure out whether the given request is for admin queue or not.
In case of lightnvm, req->rq_disk might be NULL even it's a NVM command
so that we can compare the admin request queue itself.

The third one added lightnvm admin commands to nvme.h from the lightnvm
core module to support for trace of opcode names.  The fourth one added
NVM I/O commands for the lightnvm for the trace.

Minwoo Im (4):
  nvme: simplify nvme_req_qid()
  nvme: check admin queue with ctrl->admin_q, not rq_disk
  nvme: lightnvm: trace opcode name
  nvme: lightnvm: trace opcode name of I/O commands for 2.0

 drivers/nvme/host/lightnvm.c |  6 ------
 drivers/nvme/host/nvme.h     | 16 +++++++++-------
 include/linux/nvme.h         | 22 ++++++++++++++++++++--
 3 files changed, 29 insertions(+), 15 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
