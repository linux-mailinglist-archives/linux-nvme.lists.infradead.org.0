Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C32659888E
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 02:36:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HvDbf2XD7Np+bV8XS07KWKVYHCsB7Rhm/OLuS4Hgu8w=; b=AZQBzXHcRC8C2P
	PQwvPnmB6KEigcydhu+Ax2AR/WixXBA+Afv7VKwyz6Phcqp5iTpvFHXdXzkeYfx4Oat+X1FanHHS+
	A/W4/T61PHa4TJT8OeSVqHzU5C2tjM+SF1jPfZLXQZUJs/xYjOXTPzceXxAQxYF1YhUi9rTiD2WfE
	cgf6oThwaIR6h7PatRaQyzd92jpmDedwuPnFWNQ5lvSQdQHuVYJdPk/GSqsZXm6MtbC3HrAXa76iH
	uLoiXCRnMv6pwiS6GR2n7qi3kQHKqcgdNv/zPROmu3tRORN60/37VlpIEn7SGIfZ8ocnJqeX899tw
	aF6ljElLTciaeVd13MPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0b53-0005w6-NV; Thu, 22 Aug 2019 00:35:57 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0b4x-0005vp-Un
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 00:35:53 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 3DFBA68BFE; Thu, 22 Aug 2019 02:35:49 +0200 (CEST)
Date: Thu, 22 Aug 2019 02:35:49 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v3] nvme: exclude completion trace from non-multipath
 builds
Message-ID: <20190822003549.GH10391@lst.de>
References: <396d507f9a0e312998bd6805b151ab166f53a5be.1566290451.git.mskorzhinskiy@solarflare.com>
 <20190822000939.GG9511@lst.de>
 <acaf9334-3c5c-8f25-d436-0c87e94a6064@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <acaf9334-3c5c-8f25-d436-0c87e94a6064@grimberg.me>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_173552_147857_BBF630CF 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org,
 Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 05:11:23PM -0700, Sagi Grimberg wrote:
>
>> Btw, I also think we should probably pull the original patch
>> from Hannes and just apply a clean one given that this is just queued
>> up in nvme-5.4.
>
> Thought about it too... I can fold it into Hannes patch.

I'd say let Mikhail or Hannes resend a new one against a clean state
with all the requested improvements.


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
