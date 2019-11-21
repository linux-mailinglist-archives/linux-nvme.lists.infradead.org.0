Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBCF9104CE0
	for <lists+linux-nvme@lfdr.de>; Thu, 21 Nov 2019 08:47:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aXoovd8qRzd2zHzArr6V8zLYRgkE+nIwYWmHMJvrgYY=; b=qNkwTgSUiJY8Dc
	OUTrofuQ27BpB0Xpf12mHyzzrRuwmqqxCqTN5VsmeRjTE/ElPsBOZ0DNINKrBYrA2OZtaCaiaHxQh
	B59iLsPoPXheaBOHQXjiehsuGbgwUyPiapE0JKJydzolEfHgiED8I0lQGXOZZR+2lAV4IDaX6tsjt
	cEz8SyVmR8tYvDeF8McX8xNycSXC1eNnbTg2Oa4fRqbK4QgfYRuLDY7+FeHvd2dlrnEXxjdjEHIvx
	itWrF8N88ieyvjgF91Glj9qQZeaxQrRXY2ad7R7YkEtOv5TrJZ7ipfQRtb9jMut1ejiH7OSyHgf8F
	UhMtJXTQH2slNA9+DVaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXhBC-0001bY-T1; Thu, 21 Nov 2019 07:47:06 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXhB8-0001am-2S
 for linux-nvme@lists.infradead.org; Thu, 21 Nov 2019 07:47:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1574322419;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IscjpPDsFn05XXdOj+6dSQdRGUxBBwF8/FH6XLsr4T0=;
 b=ITV9zY7sG3x0QsFDqhcKEjUxhS6IMYhCNViAXMyuHNjwznLOYxngZvHgWyLahO9MwIieL/
 5B3LbRwNrTxV86fopq8181wa1hrMbYuyzQsCGAJQ7j2rqFYRSuDmCzw1Dp0TAgludP7u2+
 orupRZhLtT8FIdcknTz0jS3KuAZ/wG0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-12-Vf598A33NoOPv7TPrwPy9g-1; Thu, 21 Nov 2019 02:46:55 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 65A271883527;
 Thu, 21 Nov 2019 07:46:54 +0000 (UTC)
Received: from ming.t460p (ovpn-8-33.pek2.redhat.com [10.72.8.33])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B5331106F97D;
 Thu, 21 Nov 2019 07:46:47 +0000 (UTC)
Date: Thu, 21 Nov 2019 15:46:43 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH V3 0/2] nvme-pci: check CQ after batch submission for
 Microsoft device
Message-ID: <20191121074643.GB4755@ming.t460p>
References: <20191114025917.24634-1-ming.lei@redhat.com>
 <20191121031154.GJ24548@ming.t460p> <20191121061431.GA22886@lst.de>
MIME-Version: 1.0
In-Reply-To: <20191121061431.GA22886@lst.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: Vf598A33NoOPv7TPrwPy9g-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_234702_191290_278B2A44 
X-CRM114-Status: GOOD (  12.35  )
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
 Nadolski Edmund <edmund.nadolski@intel.com>, Keith Busch <kbusch@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Nov 21, 2019 at 07:14:31AM +0100, Christoph Hellwig wrote:
> On Thu, Nov 21, 2019 at 11:11:54AM +0800, Ming Lei wrote:
> > Hi Guys,
> > 
> > Ping...
> 
> I think everyone has told you that it is an invasive horrible hack
> that papers of the underlying problem(s).  I'm not sure what more
> we can do here.

The problem is that the NVMe driver applies aggressive interrupt
coalescing clearly, that can be addressed exactly by this approach.

Also I don't understand why you think this patch is invasive and horrible.


Thanks,
Ming


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
