Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D11761A800
	for <lists+linux-nvme@lfdr.de>; Sat, 11 May 2019 15:43:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+LwYHnpHp2hNj5rruH4RtGS+AJ35TMa1p014GanCX20=; b=RGZ
	nYt9MFiSB22EFHJrzn070Odwoir4ty1nt0f8/b12SkebMYQ8GroCDDpd+WYhQpXqH0iHu3NaaL8G+
	mJsOSb1Rmnu0bJtpYzywPCb8vPMgmC9RBW7gCs2oe8gyKCMRoTx3SYNuJIrfM/VAaOdWACMJp/sP/
	P3rjlOtZqtaj07jUBIhfPRus3dr564pR5xfGOogrEBORXI+9nVfeCQMoGYXlHTmJ0/0Wh/HPr7am/
	agOw0ejnwLLhvyjDG5/wENoFMVjDWYlOhivpLlm5tjldND/hbgTZrQ949BXYWu3IyL0jg5SmfbVM/
	FN65d1NQC9/mbWix6ZV67GqZWthDyew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPSHT-0002mm-Se; Sat, 11 May 2019 13:43:15 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPSHP-0002mT-5P
 for linux-nvme@lists.infradead.org; Sat, 11 May 2019 13:43:12 +0000
Received: by mail-pl1-x642.google.com with SMTP id a5so4135993pls.12
 for <linux-nvme@lists.infradead.org>; Sat, 11 May 2019 06:43:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=cuolycTD9etAAUhXSBv9wolodJaTqJDzAVdl3KW1Etk=;
 b=DlM+wvPEyjItS9MOmCVMXaPs+pQZ14JcnVIvBTr79ZXbmLL+xe2ntdLZUzbWdR1qlj
 Nu4ZnLY7+j8RR2lIiGPv+dxNdh3f/Yi2BuFsgQ+lu19ZNWgzIPxuiAblQj/9gAqJ5+2R
 p/TjrbWu4I7WBcjaLDSsV4inNOoFuaI6iz7basRSj6ykDjVRojSwOYFK5jvhTd+ELHL+
 LJLxqYi1Ur5GTPMR+Xx0s4Jd+7vg4wozWqmSQwoqre/MXY/XAgs9Inr7yTfhKTn+hroj
 K2D3lHaUN7B0iQenpeh57bGoKAflfteJEZpUI7ZzutR1xxd/fk06F9V8xAFZXoibR759
 sAeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=cuolycTD9etAAUhXSBv9wolodJaTqJDzAVdl3KW1Etk=;
 b=hddTQQjWCtLSXwAZ5MY8drryJdCDiUD8vevPptHW8KEcYfvmqOj8JxPT1TnbFU2T59
 jDhP2XKtR8Z4VWkZA54IGzctPQ7B/l+yER8sFavXENbH4/FvsoBf9rT7Jmxj/BJolzLy
 McVYXqSPVaLFpMEdpru3tl6NbkiOZTe9dkqdz7+n4gJXZsLrZ+f4ZRilGbwZmsgJLTNL
 QHgFm4oCt6MD9dNQSqCd4lG8U4LwPHnRlBUuKAabjg8rtWmYkeoWu6TSvoh4aiD21+az
 REdIMlv2kspEOtWA72Ar+kzK9TqRXC8T8ebwly61kzjBnLaFOt3C04Q4AM6jy3gKrU64
 WzeQ==
X-Gm-Message-State: APjAAAUZOpU/8FpL6CMnTf8rRaTEP45IwUSnpq3fiyRNfCGK3fz1TQja
 Y6SHFlTHgVh/E27MDMqIgwFloR68+lM=
X-Google-Smtp-Source: APXvYqwRdwpchu+l3vgUiw3OZKEuDD3XQLyvG8r5BFARm+ABM0NgAv+jkqxzM09SjA1W3CSYymTwgQ==
X-Received: by 2002:a17:902:a405:: with SMTP id
 p5mr14771870plq.51.1557582189384; 
 Sat, 11 May 2019 06:43:09 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id i17sm11118004pfo.103.2019.05.11.06.43.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 11 May 2019 06:43:08 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 0/2] Minor clean-ups for nvme and nvme-fabrics
Date: Sat, 11 May 2019 22:42:53 +0900
Message-Id: <20190511134255.6790-1-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_064311_208559_67508473 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <keith.busch@intel.com>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Here's minor patchset for nvme and nvme-fabrics.
The first one fixes typos in nvme status code name.  Once it's accepted,
nvme-cli can be updatd soon.
The second removes a unused argument in nvmf_create_ctrl().

Please review.
Thanks,

Minwoo Im (2):
  nvme: Fix typos in nvme status code values
  nvme-fabrics: Remove unused argument

 drivers/nvme/host/fabrics.c | 4 ++--
 include/linux/nvme.h        | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
