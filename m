Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8107D101161
	for <lists+linux-nvme@lfdr.de>; Tue, 19 Nov 2019 03:38:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z5hqhZK6R+S7IrTPhesAPCjkPqyvYQJwHaMZrPedDMo=; b=GvDCHh+4eGm/WL
	C4kRz9hBghD1ac7/3namRIUO6edk50UOhxw/FVZD6nXSuKqEzXhREcjAtlkjokiDoI2TttJpBffoH
	qp5vrG7XeUdGygLFpKP6vHJIdEI3ZvwfjY+x0OBkp2npboiycfnyVJh9dt8L7BPL9VXA0kFa5Vx4x
	ubUl9RFzYjnlNcFiWJDdenbIFVCdDKKGZweqJmM+nue2kVRTZpx49TrUs7RB8WX82MF1PJKVRMZWJ
	jDHm6gUZWAu5bRUgZc3JqDM/bCRgMqN1KZZsM4X7Lld4WF8iVQhsOa/JFOzjzUk0dkl9Pdlf8bZgB
	L+4wOFNIFTJqJbFdEmrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWtPW-0006oA-By; Tue, 19 Nov 2019 02:38:34 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWtPQ-0006nT-OV
 for linux-nvme@lists.infradead.org; Tue, 19 Nov 2019 02:38:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1574131106;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=SQQK+dd+C6x1UYB7rg17UnNndtIRhUCCfcUEwZB60rA=;
 b=be11StNcer/EYPAUbip0sAa64adc4tzF5DCHVACZnbAZVeI5OUPjy08J53pStbqxBPBv94
 BjrupDiQENImVwA/kxnqFFUQwZt9agn76fkXLsiBfJSzUCh1GMYba1sOipVEg2KFOpY9dU
 J0FnpNmuypdp85VlpEISEi1jiTL2OLA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-265-eo5gnpnAMOyNhPqheNAh5Q-1; Mon, 18 Nov 2019 21:38:23 -0500
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 66D13107ACC5;
 Tue, 19 Nov 2019 02:38:21 +0000 (UTC)
Received: from ming.t460p (ovpn-8-19.pek2.redhat.com [10.72.8.19])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2F5B35E251;
 Tue, 19 Nov 2019 02:38:13 +0000 (UTC)
Date: Tue, 19 Nov 2019 10:38:09 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH RFC 0/3] blk-mq/nvme: use blk_mq_alloc_request() for
 NVMe's connect request
Message-ID: <20191119023809.GD391@ming.t460p>
References: <20191115104238.15107-1-ming.lei@redhat.com>
 <8f4402a0-967d-f12d-2f1a-949e1dda017c@grimberg.me>
 <20191116071754.GB18194@ming.t460p>
 <016afdbc-9c63-4193-e64b-aad91ba5fcc1@grimberg.me>
 <20191119003437.GA1950@redsun51.ssa.fujisawa.hgst.com>
MIME-Version: 1.0
In-Reply-To: <20191119003437.GA1950@redsun51.ssa.fujisawa.hgst.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: eo5gnpnAMOyNhPqheNAh5Q-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_183828_876074_370E1C1B 
X-CRM114-Status: GOOD (  15.37  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jens Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>,
 James Smart <james.smart@broadcom.com>, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Nov 19, 2019 at 09:34:37AM +0900, Keith Busch wrote:
> On Mon, Nov 18, 2019 at 04:05:56PM -0800, Sagi Grimberg wrote:
> > 
> > I'm starting to think we maybe need to get the connect out of the block
> > layer execution if its such a big problem... Its a real shame if that is
> > the case...
> 
> We still need timeout handling for connect commands, so bypassing the
> block layer will need to figure out some other way to handle that.
> 
> This patch proposal doesn't really handle the timeouts very well either,
> though: nvme_rdma_timeout() is going to end up referncing the wrong
> queue rather than the one the request was submitted on. It doesn't
> appear to really matter in the current code since it just resets the
> entire controller, but if it ever wanted to do something queue specific...

I am not sure it is an issue.

Given timeout handler needs the queue for transporting the request
exactly for handling timeout, right?

Or when/what do you need the original submission queue for handling
connect request timeout?


Thanks,
Ming


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
