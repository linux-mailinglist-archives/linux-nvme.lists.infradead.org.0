Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A20DF1C3C62
	for <lists+linux-nvme@lfdr.de>; Mon,  4 May 2020 16:08:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W6o6og7em19JROiUg6J2Um6oDgx66ig1gi7ZB0rROdc=; b=Cc2vkUoGM6W1o1
	mTk+HB7QVEQxg0+MRSwaUWd+hhQYF2Vdw1vffQZqIAOEyyqsNq/tSydH489MouErHXwCQh7fA8dWj
	rto3lpD6F7T8gydJHhp/qluFAqC2l18vLo6q3QT6EB1NjrEQCwXjEZaLWQpEQgkA1jv4Lh2Cs7Rnw
	WjExv9MlGkWnQOufzP6mOiQ2OC/c0QO01eMCbOsicsn9bErSnTyaO27v+Ck4phhzfD9Uh3Tk7TR/a
	OIWfo3wTMjsjhq4PlWA1opodTLLTlEks9r0JsQAAKomTfSJb75W/CsXhcFoM8FoitUEKLGtBVXOdr
	sGi3KBHm4fUGOk3ycbKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVblU-0005y5-3d; Mon, 04 May 2020 14:08:12 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVblP-0005wi-Bu
 for linux-nvme@lists.infradead.org; Mon, 04 May 2020 14:08:08 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 5B49768BFE; Mon,  4 May 2020 16:08:01 +0200 (CEST)
Date: Mon, 4 May 2020 16:08:00 +0200
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 15/15] nvmet-rdma: add metadata/T10-PI support
Message-ID: <20200504140800.GA22747@lst.de>
References: <20200428131135.211521-1-maxg@mellanox.com>
 <20200428131135.211521-16-maxg@mellanox.com> <20200501164818.GA19607@lst.de>
 <5cbfde4a-871e-51d4-bace-b7b0fbd675ba@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5cbfde4a-871e-51d4-bace-b7b0fbd675ba@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_070807_552517_4F48BBAC 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: axboe@kernel.dk, jsmart2021@gmail.com, sagi@grimberg.me,
 martin.petersen@oracle.com, shlomin@mellanox.com, israelr@mellanox.com,
 vladimirk@mellanox.com, linux-nvme@lists.infradead.org, idanb@mellanox.com,
 oren@mellanox.com, kbusch@kernel.org, nitzanc@mellanox.com,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sun, May 03, 2020 at 07:29:12PM +0300, Max Gurtovoy wrote:
>> Can we have a helper for metadata len that also uses
>> IS_ENABLED(CONFIG_BLK_DEV_INTEGRITY) to let the compiler garbage collect
>> the whole code if it is compiled out?
>
> We have it in:
>
> static inline u32 nvmet_rw_metadata_len(struct nvmet_req *req)
> {
> =A0=A0=A0=A0=A0=A0=A0 if (!IS_ENABLED(CONFIG_BLK_DEV_INTEGRITY))
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return 0;
> =A0=A0=A0=A0=A0=A0=A0 return ((u32)le16_to_cpu(req->cmd->rw.length) + 1) *
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 req=
->ns->metadata_size;
> }
>
>
> and
>
> req->metadata_len =3D nvmet_rw_metadata_len(req);
>
> is it good enough for the compiler ?

Well, this is the calculated metadata len, not the field in the
request, and the compiler can't really know it always is 0 in that
case.  At some point these optimizations might become a little
too ugly, though.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
