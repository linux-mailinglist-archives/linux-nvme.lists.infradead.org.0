Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3B0E2CD02
	for <lists+linux-nvme@lfdr.de>; Tue, 28 May 2019 19:04:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=vVxoXW6l8EA/N1LsV4wOb00aa/ngpvx7ANF9U+PnVrk=; b=WlY
	mMrhJoscfGaE+Td9BMYWDseN9t8sU+bHLVHJjNudicURlAJ82kw/fN4DQ/bF7fEHhW00Luke1PCdJ
	XkbmSoLNCK5sUFe3LoJAWD3zOppCZghjztoSQPnL/QUzXos9mpCTrkikPG6vzRULKUtQhNtRp+6Tn
	xIqJUJg46fYGGKA9nzEi+y+Pu7mIMfKuosUFVO13ussdABPRhCXXQmRgNV906hcyEm4a0hK9+TrT4
	uLeSOvrsxBiUHGFGwsZB261/CriSIyntkcSmricTT+2tybw0ipNtnWE9GjG4FYgKPqtyKumggN/wh
	PA2MJXqPDa8iTfnZJzLncNYeh9vDLzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVfW3-0007qc-E4; Tue, 28 May 2019 17:03:59 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVfVv-0007nX-GA
 for linux-nvme@lists.infradead.org; Tue, 28 May 2019 17:03:52 +0000
Received: by mail-pf1-x442.google.com with SMTP id a23so11872601pff.4
 for <linux-nvme@lists.infradead.org>; Tue, 28 May 2019 10:03:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=xuDad1TfDeyH4+94qHmrqV3dJe9c0SOfXzp9icXMSQo=;
 b=Q+1LdgCh3s6BcaC7Ei4QIdbubUAiJ7EVD/JtqtFFywRFugvKUciIsrgP+e1KBQwIos
 TcsJq6k7SI+dJzlt4a7sw8N1n/kvN1Eqv8f7FpagnhAqjdzRHgeqjO69Zll/tNY96TvU
 IoHOgQHtrL7psVlroU6IEJ+tnSPF62ID0zzT/RHCz2ir7v1SQ5RcudaAu57pxx2vZ+PJ
 OCKZHdg2f0Hs+KJ3TZuOGgaCSykI4HRlkdaQ0C38v9nkG0BhqDktM6r2sA5BzbfRBnc2
 8C8Z+KB0mYP+TRvdZCZkOWIWpkaWhdQGMx+kakQfaLfwPd5iCXJcoBIIok96CN7R5XEp
 ut1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=xuDad1TfDeyH4+94qHmrqV3dJe9c0SOfXzp9icXMSQo=;
 b=oB1yzdA2iOYQDKtN65K+p71KtyjIauNd2UIyyDbZaYILa5DNWotpePntmHA4uESl/n
 2NeQW9HOXAxQ/vOOA/COMUapDV4j/BayxegnK4FXkgp6i4s0jvzWeXxj/MQb8Y6hYqko
 kBz2+kHEUxVnWrlObNLYWWU3N7jBRYZtpCRPK5kX2wvolmGOyV4Tc7KFIqk/uxI1kbnd
 DsnetDzZVqW5KI7MN/G5Jqi/ifb18+TdYmaTqS63Qn0g0G+o03xaIEdfQJqMm1H5+/+R
 N/4OIIz9wt+nI3pvhJhqfOHTaWFmwSW2vDjZ54oMvzGESdWMrplGwalnXeogpAd5z1lE
 nusA==
X-Gm-Message-State: APjAAAV0dpRXFhRXLaiw5N+w39yc5rr4BFC7WY/BkoiRQniwg1w0QYG2
 g8qotbj8W6QpPac725cRtVYycTzRM08=
X-Google-Smtp-Source: APXvYqzJ3UE7U7CNKosu46F4nMe0Krc+z45cquHxaqRPoEoL9NVYE1whzIJ01YKqiz6yBD5MNN6Kgg==
X-Received: by 2002:a63:6445:: with SMTP id y66mr23840527pgb.23.1559063030298; 
 Tue, 28 May 2019 10:03:50 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:3c36:ee5f:9fff:3b5e])
 by smtp.gmail.com with ESMTPSA id g8sm16898425pfk.83.2019.05.28.10.03.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 28 May 2019 10:03:49 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 0/2] nvme: enable to inject errors into admin commands
Date: Wed, 29 May 2019 02:03:36 +0900
Message-Id: <1559063018-3682-1-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_100351_543157_A6DFA5F0 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Thomas Tai <thomas.tai@oracle.com>,
 Akinobu Mita <akinobu.mita@gmail.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Currenlty fault injection support for nvme only enables to inject errors
into the commands submitted to I/O queues.

This enables to inject errors into the commands submitted to the admin
queue.
    
It is useful to test error handling in the controller initialization.

	# echo 100 > /sys/kernel/debug/nvme0/fault_inject/probability
	# echo 1 > /sys/kernel/debug/nvme0/fault_inject/times
	# echo 10 > /sys/kernel/debug/nvme0/fault_inject/space
	# nvme reset /dev/nvme0
	# dmesg
	...
	nvme nvme0: Could not set queue count (16385)
	nvme nvme0: IO queues not created

Akinobu Mita (2):
  nvme: prepare for fault injection into admin commands
  nvme: enable to inject errors into admin commands

 drivers/nvme/host/core.c         |  7 +++++--
 drivers/nvme/host/fault_inject.c | 33 +++++++++++++++++----------------
 drivers/nvme/host/nvme.h         | 36 +++++++++++++++++++++---------------
 3 files changed, 43 insertions(+), 33 deletions(-)

Cc: Thomas Tai <thomas.tai@oracle.com>
Cc: Keith Busch <kbusch@kernel.org>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
