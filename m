Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A1074CA12
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 10:56:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jrRf1EiDxCAy1YPTyzXapQtaH8pmM56lJcoHwM1Ul54=; b=qdVIVVBIXKN5MD
	OGZTr4mWj+5MqP1PyVuRwvI5kh0+IXvlzNKEAphD8397YkGufiBmSxYcxNRCFjz6jm91M0wHpDM4c
	qhBBREAr7VnBSLjIInF8qet82XzHl5FRpkU3pJ3mDTOHi4ywvNyTtK4h0wOXsEZeUdeMoZYwpE65K
	HRnUqI2eXxMC2YRFLdccxOJ8ywdXhiH96o/yUwaH0FjQhLA00ZJx4H3YvU1X6YJ73fC6G9iqo9sea
	n7x9LOlmgoebnNpyKFTMquIWbE21RZGFxWIguD6o3OvVv+Rthb7JwCxJ89ccBuNwFzvZnMPR07Nkg
	xZErrO2BLV01dnIRLzVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdsrK-0000aK-W3; Thu, 20 Jun 2019 08:55:55 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdsrA-0000Z2-V2
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 08:55:46 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 5FB1B68B05; Thu, 20 Jun 2019 10:55:15 +0200 (CEST)
Date: Thu, 20 Jun 2019 10:55:15 +0200
From: Christoph Hellwig <hch@lst.de>
To: Akinobu Mita <akinobu.mita@gmail.com>
Subject: Re: [PATCH v3 0/3] nvme: enable to inject errors into admin commands
Message-ID: <20190620085515.GC23140@lst.de>
References: <1560089822-11462-1-git-send-email-akinobu.mita@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560089822-11462-1-git-send-email-akinobu.mita@gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_015545_164401_F532B27F 
X-CRM114-Status: UNSURE (   5.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 Thomas Tai <thomas.tai@oracle.com>, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks,

applied to nvme-5.3.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
