Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC278103456
	for <lists+linux-nvme@lfdr.de>; Wed, 20 Nov 2019 07:36:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=THvFQpd1zIRm3SD8Vv2JkRhRGX5hE6YhDUsd5h4QzHk=; b=LsYES3RqMeQJNc
	kG2zEcIi5dOdPVYFpyD/9I24qwVz2NGjkiBV9NUACLVL49b4Zu4rNckNIcRGiR1rvbDGWOWmf//D3
	E6w8X4KCumrbEDHo4gwpkCCKL5bzJuthRkoPXj34UQP3oc8asoQ8giFGEtDD7C1fxpNe/69XJfrtj
	oQXjggYhX816ltjAWM2hHCO6IPq4zFhUQgRpk2/dHma7rA2PH1ajZCrVnj5NOu1XPxNXEe+rAwCt1
	LI404EoDICQaWqEfKFjCd4NvpgOvQMNthZl8xQuB26nfGP9IGYxxuTsglwNyW7ukH04cOToaafPCm
	y4s5uFMgzzYMDDB310Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXJb6-0001Ev-Af; Wed, 20 Nov 2019 06:36:16 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXJb0-0001Dt-CS
 for linux-nvme@lists.infradead.org; Wed, 20 Nov 2019 06:36:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1574231766;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hsXkh/VQI3KB8Zl4hHKe473v7riRmv/Z4J6X27T5pmM=;
 b=DX9Ynnnt5jNbSXhVp9n/0A0UBNmBG64yJNW+NDNjLxKPX4mYgH51IcaWQKcgisyx/LNmHX
 aKqIYYn20QOn6oIV9YIJN2M8KAJRo/aCHFtruWs1QgmwewFK4cLKyfB0RmHfVK40oHUCqb
 tfknsXgsvF64Fy8n3xg/NNuz0nW1Oug=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-67-TZ6SJJfHPPCktfDD586oLw-1; Wed, 20 Nov 2019 01:36:04 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 60D021005500;
 Wed, 20 Nov 2019 06:36:02 +0000 (UTC)
Received: from ming.t460p (ovpn-8-21.pek2.redhat.com [10.72.8.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 78B055C1B2;
 Wed, 20 Nov 2019 06:35:55 +0000 (UTC)
Date: Wed, 20 Nov 2019 14:35:50 +0800
From: Ming Lei <ming.lei@redhat.com>
To: James Smart <james.smart@broadcom.com>
Subject: Re: [PATCH RFC 0/3] blk-mq/nvme: use blk_mq_alloc_request() for
 NVMe's connect request
Message-ID: <20191120063550.GA3664@ming.t460p>
References: <20191115104238.15107-1-ming.lei@redhat.com>
 <8f4402a0-967d-f12d-2f1a-949e1dda017c@grimberg.me>
 <20191116071754.GB18194@ming.t460p>
 <016afdbc-9c63-4193-e64b-aad91ba5fcc1@grimberg.me>
 <fda43a50-a484-dde7-84a1-94ccf9346bdd@broadcom.com>
MIME-Version: 1.0
In-Reply-To: <fda43a50-a484-dde7-84a1-94ccf9346bdd@broadcom.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: TZ6SJJfHPPCktfDD586oLw-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_223610_507755_23B8CD96 
X-CRM114-Status: GOOD (  17.14  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
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
Cc: Jens Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Nov 19, 2019 at 09:56:45AM -0800, James Smart wrote:
> On 11/18/2019 4:05 PM, Sagi Grimberg wrote:
> > =

> > This is a much simpler fix that does not create this churn local to
> > every driver. Also, I don't like the assumptions about tag reservations
> > that the drivers is taking locally (that the connect will have tag 0
> > for example). All this makes this look like a hack.
> =

> Agree with Sagi on this last statement. When I reviewed the patch, it was
> very non-intuitive. Why dependency on tag 0, why a queue number squirrell=
ed
> away on this one request only. Why change the initialization (queue point=
er)
> on this one specific request from its hctx and so on. For someone without
> the history, ugly.
> =

> > =

> > I'm starting to think we maybe need to get the connect out of the block
> > layer execution if its such a big problem... Its a real shame if that is
> > the case...
> =

> Yep. This is starting to be another case of perhaps I should be changing
> nvme-fc's blk-mq hctx to nvme queue relationship in a different manner.=
=A0 I'm
> having a very hard time with all the queue resources today's policy is
> wasting on targets.

Wrt. the above two points, I believe both are not an issue at all by
this driver specific approach, see my comment:

https://lore.kernel.org/linux-block/fda43a50-a484-dde7-84a1-94ccf9346bdd@br=
oadcom.com/T/#mb72afa6ed93bc852ca266779977634cf6214b329


Thanks,
Ming


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
