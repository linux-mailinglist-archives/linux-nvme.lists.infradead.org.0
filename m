Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25498F86A2
	for <lists+linux-nvme@lfdr.de>; Tue, 12 Nov 2019 03:10:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NXFN28QaiSSmkosgqeEXT+k+dlgY/dP5UQ0GO0EggfE=; b=uNzeKNM6WG87Ci
	yH8rtLMCS68eY2YYECEN4F5PDpe6Fk8JH3BF4ofy26qdF9o0PFkdmXPvClP0grxmijuVh129okQ13
	pIjy2UYqKHCHiHAxa0fQ2E5ALAL3b8fO61gWvgPhr72yGrkv2zxFFZrps2Ug+2GzW0jS4UlwmDleu
	dcPSDqLuoO9z8IltYM9wPuKYmp+4YDWR35H67N4QhjNdVkQOKlGKPR9W712tLN2/NMzrE7vHvfhkm
	sGiPFfLqOGkGS6L0gVtHwL8GyPp4KlKhY1joGME+DWTQmV66mFBBV6869ac2lleBq0B2yr0O+8m2A
	UDguvQhGG/Bt47BkpLaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iULdD-0002lm-9d; Tue, 12 Nov 2019 02:10:11 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iULd7-0001rR-5l
 for linux-nvme@lists.infradead.org; Tue, 12 Nov 2019 02:10:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573524602;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zwIej8L0DUgEEuem6IJGdBEU//aFA2ZHcy7O9ct3ggw=;
 b=ARcfukQzCTcGFuHHpCNCKCYl6J73LCRw8pwSJlvEyicUJ83M8ieRN768+5H1VISKKtai8C
 hzzes/2NLXPCdQ3KAQUSUtBl7EllUbcZR1vNTviDCCIrVFb8Zff5fTJlv7C275kL4rBAC5
 258P6+PDF+0k7sdCzTFRR0+sVODo3ro=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-208-IOf5XYo2N0ya7JHV2WeeBA-1; Mon, 11 Nov 2019 21:07:50 -0500
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F0D22107ACC4;
 Tue, 12 Nov 2019 02:07:48 +0000 (UTC)
Received: from ming.t460p (ovpn-8-19.pek2.redhat.com [10.72.8.19])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0E55E61076;
 Tue, 12 Nov 2019 02:07:42 +0000 (UTC)
Date: Tue, 12 Nov 2019 10:07:38 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 2/2] nvme-pci: poll IO after batch submission for
 multi-mapping queue
Message-ID: <20191112020738.GC15079@ming.t460p>
References: <20191108035508.26395-1-ming.lei@redhat.com>
 <20191108035508.26395-3-ming.lei@redhat.com>
 <20191111204446.GA26028@lst.de>
MIME-Version: 1.0
In-Reply-To: <20191111204446.GA26028@lst.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-MC-Unique: IOf5XYo2N0ya7JHV2WeeBA-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_181005_308829_F7872820 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Long Li <longli@microsoft.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Nov 11, 2019 at 09:44:46PM +0100, Christoph Hellwig wrote:
> On Fri, Nov 08, 2019 at 11:55:08AM +0800, Ming Lei wrote:
> > f9dde187fa92("nvme-pci: remove cq check after submission") removes
> > cq check after submission, this change actually causes performance
> > regression on some NVMe drive in which single nvmeq handles requests
> > originated from more than one blk-mq sw queues(call it multi-mapping
> > queue).
> 
> > Follows test result done on Azure L80sv2 guest with NVMe drive(
> > Microsoft Corporation Device b111). This guest has 80 CPUs and 10
> > numa nodes, and each NVMe drive supports 8 hw queues.
> 
> Have you actually seen this on a real nvme drive as well?
> 
> Note that it is kinda silly to limit queues like that in VMs, so I
> really don't think we should optimize the driver for this particular
> case.
> 

When I saw the report at first glance, I had same idea with you,
however recently I got 3 such report, in which two of them only have 8
hw queues, one is Azure, another is on real server. Both are deployed
massively in production environment.

Azure's NVMe drive should be real, and I guess it is PCI pass-through,
given its IOPS can reach >400K in single fio job, which is actually good
enough compared with real nvme drive.

Wrt. limit queues, actually it is a bit common, since I saw at least two
Intel NVMes(P3700, and Optane) limits queue count as 32. When these
NVMe are used in big machines, the soft lockup issue could be triggered,
especially more nvmes are installed and the system uses a bit slow
processor, or memory.


Thanks,
Ming


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
