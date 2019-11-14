Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1D8FC1FA
	for <lists+linux-nvme@lfdr.de>; Thu, 14 Nov 2019 09:57:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6/naLf0NcnPdtLBAXm4NzGdXW/TaQIbmMXeNQ0lj35c=; b=rnRSsVvB/ktBsW
	Ub60t8n09n48s5x+aYTcNwu5kfcDGyHEKYxxPKhehkjLqcDDjcIifxTwhOWFtuWeFm0iDwj7UAdAi
	9wxcmKAn3hmhT1gyyg3SHAlopZw9dRSv6virU2Z5b3kNOmKM4c+gFKlVOBj4r+P8ncgPq0ToOyKu5
	H/2MN8+/rk7mkSCZAEsRrOHH59Y8QoWDDSJIFb4gpn4GVsKTBuVduI2UdlJnJXGjNMqM9W5voo222
	a9q+EtIoHlIlRn8u5znGG1zUI2nnpz365C97fnnlIPucT5TfJJvtkkIZPMhEt++jXa40aEoEeWlb8
	lBkdRVPN9FDop+F+CPIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVAw7-00007b-4B; Thu, 14 Nov 2019 08:57:07 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVAw2-00006a-7L
 for linux-nvme@lists.infradead.org; Thu, 14 Nov 2019 08:57:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573721820;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Eil7Q7E2Xgftm42AgT9N52O2cASkUZrsXZ+UchAo3H4=;
 b=ewpqIFbEY3SDsmV4uvF8rVL6OuGNV4pkTz4wcBJWCFvrP831LkMtAsLfG8VXQE398X8XF3
 VmSeHC/K43eVSaUwu7I8D3OQdPdBbjVx8GvO/gAJ3oJQChMCECGG10wf31ZTyJRTT0w8p4
 bedpOkVwqzVWAvFPPspH3Gg0wpSGa4I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-217-TN0GsuLqM1yladVJcIoHvg-1; Thu, 14 Nov 2019 03:56:56 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F31A88048E3;
 Thu, 14 Nov 2019 08:56:54 +0000 (UTC)
Received: from ming.t460p (ovpn-8-24.pek2.redhat.com [10.72.8.24])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 69D8810841AF;
 Thu, 14 Nov 2019 08:56:47 +0000 (UTC)
Date: Thu, 14 Nov 2019 16:56:43 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH V3 2/2] nvme-pci: check CQ after batch submission for
 Microsoft device
Message-ID: <20191114085643.GA4213@ming.t460p>
References: <20191114025917.24634-1-ming.lei@redhat.com>
 <20191114025917.24634-3-ming.lei@redhat.com>
 <20191114045643.GA97802@C02WT3WMHTD6>
MIME-Version: 1.0
In-Reply-To: <20191114045643.GA97802@C02WT3WMHTD6>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: TN0GsuLqM1yladVJcIoHvg-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_005702_346008_E442DE63 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Long Li <longli@microsoft.com>,
 linux-nvme@lists.infradead.org, Jens Axboe <axboe@fb.com>,
 Nadolski Edmund <edmund.nadolski@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Nov 13, 2019 at 09:56:43PM -0700, Keith Busch wrote:
> On Thu, Nov 14, 2019 at 10:59:17AM +0800, Ming Lei wrote:
> > @@ -912,6 +917,10 @@ static blk_status_t nvme_queue_rq(struct blk_mq_hw_ctx *hctx,
> >  
> >  	blk_mq_start_request(req);
> >  	nvme_submit_cmd(nvmeq, &cmnd, bd->last);
> > +
> > +	if (bd->last && test_bit(NVMEQ_CHECK_CQ, &nvmeq->flags))
> > +		nvme_check_cq(nvmeq);
> > +
> 
> You've given this quirk a special completion handler, how about giving
> it a special queue_rq as well. Then you can check the completion queue
> during submission while holding the same lock as before.

We can do that, either we have to pass one extra 'check_cq' parameter to
common helper or duplicate a nvme_queue_rq_quick(). Not sure what benefit
we can get by this way, given test_bit(nvmeq->flags) is always close to
zero cost. 

Also if same lock is held in both submission & completion for the quirk,
the lock contention will be increased for the quirk since the lock has
to cover command submission, which shouldn't be needed.


Thanks,
Ming


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
