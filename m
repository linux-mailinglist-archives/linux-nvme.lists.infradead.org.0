Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC358DB5A2
	for <lists+linux-nvme@lfdr.de>; Thu, 17 Oct 2019 20:12:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tOQPh86A690blIVOZS8N/u4yj9mvLc55/maA8Ih8r0Y=; b=sEy+fbwbnOaGZ8gC8FJ8sHb02E
	Gn0wv1Amt9r+4kQICPE8QngR8Q0GMDts5CjBz+/UWCIX3jMEWLBa2LQvMtPeZVHPAmXiq/Rz4sMoH
	iihUNnSBp0O76u1CGOwcs3OxIi3UFmDPxXJXPm8pzjSkH0zM7X1DSss4nxFFL99ELoLZK2nvdDnEk
	B1u1c/hN63VVj7/mrR7M2YYIAc4PRqMH1lB9kA/BnIarolpC/jxmUWBtC5Es32km0GjC/QBBjkwdK
	f8ZSFIhBAMmqRpYEJQ98RBUCLmAnpX5h48xr0RfUcAEhfD4vrSrSEgJdKDnKYJ08Sp62IxJ7RjhKv
	fdKOkkOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLAGA-0002pn-9E; Thu, 17 Oct 2019 18:12:26 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLAG5-0002pF-1i
 for linux-nvme@lists.infradead.org; Thu, 17 Oct 2019 18:12:22 +0000
Received: by mail-wm1-x342.google.com with SMTP id v17so3507070wml.4
 for <linux-nvme@lists.infradead.org>; Thu, 17 Oct 2019 11:12:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lightbitslabs-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=rNqr8D3CoWkxj+aNM/DtKE8NOg3TM5bEko1pvOOfXIY=;
 b=i6xzjqeTg3dU/Y7VY+h3vWe9K0ozynEJ1u6EtNpxwAwqucg0wiy8/SOKBP84q77qV2
 4jx2wH2IoV+fTxD0haVzxbq8gf7POIsBOgHn9K/Q11Oy6OM5U1GzblxHiMk9q5BTqeM8
 c60/2iYE8/PQtd6dImkFApRugXoj0A6TOEG09BGdocBlcemYQc62vwvA+h+sKfeTK1Lh
 VGshMQ5RpmS/xFruowEg/K3kphM2mmKgcGXN5s94EpHOSDqytNAQUhICtkVMJCDBH9kn
 2eqnZ+7ciCcKFmotRUd3Tk7LpNFc6EFZQCI/Lq2eZNXyl0g1wn/gcCgbBt+HwKSey79Y
 3GuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=rNqr8D3CoWkxj+aNM/DtKE8NOg3TM5bEko1pvOOfXIY=;
 b=DszOcGBBHV0p5z1K3RKFBEF/IFsKriFyhyUv2ub1edAihGbpSzhqrwRvd5Q+EDbiR/
 Nux4BJdzEqy8aqhv+ayT7WFq7UlbpkbBiJzKEouaAn8gEWSnMrERxVrJ9E3nFRI3UhAM
 WvvRZEmmTiSyl1F34vgTpupV5ZjuL5wrwZfUaUUr/qvoLDd2AuIP2SHnGXrEngFqrmY+
 kKNLd7dzXUIlwkSn0f651N1zqFuZDuLSYd2fJ7beY0mMxuIgR53zswpaajkBHbrYEtqw
 hnYzsV0srOZo5V2GzO3eEJwjpBOpv4suucW2gv4Lk1+r0BDHWjtVRrigpcikYd1y8BKh
 ABWA==
X-Gm-Message-State: APjAAAXtPUpIMLsOWl9EJJKJ0IF5QWSqP8kJ4bYvKRDTyC26xAo5ep88
 Mbczp6cNDJh/0boCcoW1xujPqF9uGLj5nA==
X-Google-Smtp-Source: APXvYqxUDzI9eQbHO2snkO9tayjS2YP5Qp6i0Uhu2s2HYM3n+bIFAf0rss5rP/jJd4UK0NEcESq8RQ==
X-Received: by 2002:a1c:d8:: with SMTP id 207mr3949264wma.65.1571335938767;
 Thu, 17 Oct 2019 11:12:18 -0700 (PDT)
Received: from anton-latitude..lbits (c-73-241-145-113.hsd1.ca.comcast.net.
 [73.241.145.113])
 by smtp.googlemail.com with ESMTPSA id y1sm3482272wrw.6.2019.10.17.11.12.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 17 Oct 2019 11:12:17 -0700 (PDT)
From: Anton Eidelman <anton@lightbitslabs.com>
To: hch@lst.de
Subject: Re: [PATCH] nvme-multipath: fix possible io hang after ctrl reconnect
Date: Thu, 17 Oct 2019 11:11:42 -0700
Message-Id: <20191017181142.28524-1-anton@lightbitslabs.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20191017152241.GA9155@lst.de>
References: <20191017152241.GA9155@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_111221_160544_BCB2A39F 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: keith.busch@intel.com, Anton Eidelman <anton@lightbitslabs.com>,
 sagi@grimberg.me, linux-nvme@lists.infradead.org, hare@suse.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

As far as I can see nvme_init_identify() is called from
nvme_xxx_configure_admin_queue() in tcp.c as well as in rdma.c
regardless of the value of "new".
This makes sense as over reconnect things in the identify might change
for a dynamic controller, e.g. the cntlid.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
