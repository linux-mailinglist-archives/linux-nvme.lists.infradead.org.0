Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21DBDCD04E
	for <lists+linux-nvme@lfdr.de>; Sun,  6 Oct 2019 12:13:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0qhCAO3nOhfGp7c70EVyRxe4KJSReDpkGWNKqA4k6dM=; b=u+k2Os2MQuaUyU
	9n7G6yEsYM8G+gWrqSAkT3jc7rp5bgMIeZh5V+uAguddEFV9HqryZWob18hn0fiIkm0nL0ybbpogJ
	zoQsSDCHorr2U0T+iKUsrAOVv1tYWcVEc86CyMmgcsfn3vA8xK4tlbWivIrL0L410/q3BYzndrTjq
	pJn9spzKASJDY6OgADrB+aIRU5/DZWvoPM3xaI31kzrTWYPW/KvWBmElLkOj6u+G5raH6IBjlqb5U
	nDZLhILms0ate5J2AuT/M2JXWW3KqrMqQaAKW7AERBuecVzqNr+NCdznhwboN8flomWcFa/OHcqt+
	WGQjS8I3woh38h1NVQKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH3Xa-0008J7-9v; Sun, 06 Oct 2019 10:13:26 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.2 #3 (Red
 Hat Linux)) id 1iH3XW-0008Iv-VS; Sun, 06 Oct 2019 10:13:22 +0000
Date: Sun, 6 Oct 2019 03:13:22 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH] nvme: define struct for __nvme_submit_sync_cmd()
Message-ID: <20191006101322.GC30175@infradead.org>
References: <20191001231346.18518-1-chaitanya.kulkarni@wdc.com>
 <58CA8A6F-46B6-4728-9EF4-ED3EAEEEEE2E@javigon.com>
 <BYAPR04MB5749A393F5328589B36CDE36869C0@BYAPR04MB5749.namprd04.prod.outlook.com>
 <20191005144811.GB30437@keith-busch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191005144811.GB30437@keith-busch>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: Javier =?iso-8859-1?Q?Gonz=E1lez?= <javier@javigon.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sat, Oct 05, 2019 at 08:48:12AM -0600, Keith Busch wrote:
> On Wed, Oct 02, 2019 at 06:10:09AM +0000, Chaitanya Kulkarni wrote:
> > On 10/1/19 10:47 PM, Javier Gonz=E1lez wrote:
> > > Makes sense to me. We have other places with similar arguments (e.g.,
> > > nvme_submit_user_cmd). Would it make sense to unify this too if we mo=
ve
> > > in this direction?
> > > =

> > Thanks for the feedback, I'll add that too in the next version.
> =

> It also looks like much of the callers can use the much simpler
> nvme_submit_user_cmd() that already provides defaults to the numerous
> parameters.

That on the other hand actually seems like a useful change.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
