Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A12253ACC4
	for <lists+linux-nvme@lfdr.de>; Mon, 10 Jun 2019 03:52:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B5zwdjAP53IGCQx4Ssei2aSv7B6t/Z7itDKBHFseUwY=; b=bmY45Bdj7Ku7OD
	guVEgKSwXmz4ODLaC6pDDqEWtQrJT4L3ENYEP7jzpMmwqiQXVylOs4JBIXb7JFF8ykGnyOUnjJXc3
	9I1Pj6xtUYi7vTGwn56HBbNS4/uZbyd/kqxs/wQLJF6ESd+3Hbwiqgtl3/ZZ57fh6xb3wpvi6mezc
	kG+fSHROlw25Zu5zaNSJ39ZZJft43eJigKEBxbqa8VKi6zikoRCixS8W7XD2CMlc1yXUK9a3gt40m
	o9djiKBoTGH2Dv5w4fSwMTGA9pDAtKe0gBKr6yBlt/ipf9nRXdAFM9NzfAha7I6+ZR2Jb9X6wKvAq
	HmWS9sIElS5Hp1WE8HzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ha9Tx-0007bM-Dl; Mon, 10 Jun 2019 01:52:21 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ha9Tq-0007az-C0
 for linux-nvme@lists.infradead.org; Mon, 10 Jun 2019 01:52:15 +0000
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3DEA2C049D7C;
 Mon, 10 Jun 2019 01:52:08 +0000 (UTC)
Received: from ming.t460p (ovpn-8-23.pek2.redhat.com [10.72.8.23])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3579E60126;
 Mon, 10 Jun 2019 01:52:01 +0000 (UTC)
Date: Mon, 10 Jun 2019 09:51:56 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>
Subject: Re: [PATCH 2/3] nvme-pci: remove queue_count_ops for write,poll_queues
Message-ID: <20190610015155.GD26551@ming.t460p>
References: <20190608180219.17523-1-minwoo.im.dev@gmail.com>
 <20190608180219.17523-3-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190608180219.17523-3-minwoo.im.dev@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Mon, 10 Jun 2019 01:52:12 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_185214_432632_1F615F0D 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sun, Jun 09, 2019 at 03:02:18AM +0900, Minwoo Im wrote:
> queue_count_set() seems like that it has been provided to limit the
> number of queue entries for write/poll queues.  But, the
> queue_count_set() has been doing nothing but a parameter check even it
> has num_possible_cpus() which is nop.

However, the check is valid, which shouldn't be nop, so could you fix
the check instead of removing it?

Thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
