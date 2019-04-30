Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01361FCE9
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 17:31:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mUFdyjLs3NxlZ3OF4PX4ndKU0y9V7grXzocUDKSyzNw=; b=KoSQLIdvwS5n82
	X27nZ40r1ckFaNaF31mvXENDIQkeoPcOsk0/fvgud4PalgJtsFbynQ2/EkJmg0fLQ6usmsVpe3WU/
	SSbO47wsqdqbIWoLjy03n1U1zo6y/09TfI7ca/NEMpVSANJFbl6DdJbp7GVztabCWY0DrAstd7mEG
	yMwhrlLCVzO74QKk/nIk95gWaTQfp711mFEj3yY0Nmv22gnsSAhm9xi1tL/2cJBoDJE8fYpA6AQft
	gwbtibKlmE4zfEhEPfFUhDo6dVVMfew0wAxcnOBoQS1mUDW13ILwRgomcZmsEvNvxikENemiYCoY5
	BF/oynHfXrW9qG1gvBdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLUj6-0006zv-Ub; Tue, 30 Apr 2019 15:31:24 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hLUj2-0006zl-SY; Tue, 30 Apr 2019 15:31:20 +0000
Date: Tue, 30 Apr 2019 08:31:20 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Minwoo Im <minwoo.im.dev@gmail.com>
Subject: Re: [PATCH 0/2] nvme: Check size of command structures
Message-ID: <20190430153120.GA26879@infradead.org>
References: <20190411151832.26481-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190411151832.26481-1-minwoo.im.dev@gmail.com>
User-Agent: Mutt/1.9.2 (2017-12-15)
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
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks,

applied to nvme-5.2.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
