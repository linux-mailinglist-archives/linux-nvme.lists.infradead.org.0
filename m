Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBED915490
	for <lists+linux-nvme@lfdr.de>; Mon,  6 May 2019 21:47:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=b7viMIODjfy4WjRJXgNkml5tEsEEp1XIXQR53ZvT7jw=; b=Ccy
	Dn+9MODa2ND9mqyDlk9jHEYgcT5Er8DqQ/QwUM23eAwtb+LGGlkvY/AzRH9Y0/gjV9uTilmqGEHwS
	XiL1TO18OKdOYx0eXLjUxpUZgtoZ9aVgYLi0BOz/kqi1GV7fvDqJwAGGsHg8jri13o5uDPWNsJjkh
	SF6amXd9n/kFdjX667g1Yg3q/+J6r6Ex7aQiIMVkqzGBPSa3gTr2OzlgotEdlxVIwA39gCWaLQXxx
	SBmi4lg1GyObpN8etSkNk2y008hbDvhfUQ4JIcyzFges3H2x0Q97PKu7u+mt91kOQiDt850EEWaWU
	R2DVkydAaOrMCNUGuBvny0gDR0/+jzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNjZm-00068Q-SR; Mon, 06 May 2019 19:47:02 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNjZi-000687-L5
 for linux-nvme@lists.infradead.org; Mon, 06 May 2019 19:46:59 +0000
Received: by mail-pl1-x644.google.com with SMTP id y3so6893597plp.0
 for <linux-nvme@lists.infradead.org>; Mon, 06 May 2019 12:46:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=RZ69FN+yPRnRTNbVGg/Me8iqNf/nIV26Bm/8UA/gLMI=;
 b=YyZ1tBY+e6vIj33L6kfeAJUkTHUoHDbswInOzVk5VfsySxAXcrzErDeDJ+a2hODvgN
 nUnXzASUffo6AEAYBx6lTMTAsHPN2qxe5kDaoawt/4aEnWbedbl9KoZh3bff5s2ZtKYW
 +IAGoH+fAbfq04AYb2ygVhhOUs79C4fWI0Wb6Q7YS8CbMVylBAWjFs+LLj8BGlpQpxui
 tnsv8np3PUI180QbX+BDyxzkjRxUTzcs7ZVhIaGJtmcWrFqLmFxNiboOsuLH7EuANOEU
 WLCMW6/CgF/Nubars2fIYt+SXkmTklIUBtI+3F4a3eBWPGBK6KOmEXAWwyIe/Wr/3jIA
 x0dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=RZ69FN+yPRnRTNbVGg/Me8iqNf/nIV26Bm/8UA/gLMI=;
 b=OKieqx0YqqCg3fCQfhACVvgRYgHVVXWklHmHGPWnVtXfgMwAkvnHZxokZ2BHGKG89v
 RSNCDKvs4aN6OcqNNPaZXlGsr9pvgVwqZ+7Qe+xEBGqWJyhGLHMU1UaRB3KTx8Cwl//A
 kKGbfxVBa2PiPq19YVoH8AKbwmpXS39TMKSB9HN5tYtxX3kak1qkrulivN6N3mteqiQj
 5JnmL+RGs64BEpkmkQMntzjHQeg/caoTdobJKWKSLoYSMTYkd7jc4T92LXXRjJkicowP
 c9hfGfnwks4qADg2sJIBBHgkp8YCZc3tmqTLjHJe8AX3j3h0FfiaTgWnKijOLFn2suTz
 QjBQ==
X-Gm-Message-State: APjAAAXeo4qcccVDM7pz52iXEArtiFX4uyNGO+LAUXPw/+Fs9OL9G8A1
 7B/Z16V4pC1wrE9Tvr3Hgj8m3yWdJIk=
X-Google-Smtp-Source: APXvYqydBHVnI3q3VKJJtXxs81sasMifMW+driaG38PuIofP6+6qgB/eZ7llhuizTx8BjeCcxgLqfg==
X-Received: by 2002:a17:902:6f17:: with SMTP id
 w23mr33755681plk.29.1557172017592; 
 Mon, 06 May 2019 12:46:57 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id b18sm7140073pfp.32.2019.05.06.12.46.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 12:46:56 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V2 0/2] nvme-trace: Add support for fabrics command
Date: Tue,  7 May 2019 04:46:42 +0900
Message-Id: <20190506194644.11109-1-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_124658_690929_C4EDD485 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 James Smart <james.smart@broadcom.com>, Keith Busch <keith.busch@intel.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Christoph Hellwig <hch@lst.de>,
 Minwoo Im <minwoo.im@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

  The first one introduces a new inline function to check whether the
given nvme command is for fabrics or not.  We do the checks in many
places so that we can have it as an inline.

  The second patch is the actual commit to support fabrics command
tracing with updating review comments on previous V1.  Actually it has
been updated entirely, but keep it tracked for the history and make this
patch V2.

I would really appreciate it if they are reviewed.

Thanks,

Changes to V1:
  - fabrics commands should also be decoded, not just showing that it's
    a fabrics command. (Christoph)
  - do not make it within nvme admin commands (Chaitanya)

Minwoo Im (2):
  nvme: Introduce nvme_is_fabrics to check fabrics cmd
  nvme-trace: Add support to trace fabrics command

 drivers/nvme/host/core.c          |  7 +++-
 drivers/nvme/host/fabrics.c       |  2 +-
 drivers/nvme/host/trace.c         | 67 +++++++++++++++++++++++++++++++
 drivers/nvme/host/trace.h         | 37 +++++++++++++++++
 drivers/nvme/target/core.c        |  2 +-
 drivers/nvme/target/fabrics-cmd.c |  2 +-
 drivers/nvme/target/fc.c          |  2 +-
 include/linux/nvme.h              |  7 +++-
 8 files changed, 120 insertions(+), 6 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
