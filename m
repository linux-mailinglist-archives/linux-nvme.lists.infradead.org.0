Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2214A2F34
	for <lists+linux-nvme@lfdr.de>; Fri, 30 Aug 2019 07:54:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WTR5z6q3txAvhpWcC+1jODp9+FvKjXinDO/fjjhxa+A=; b=VTgdyL6PaDL3Xb
	xXGVuSMeJ5pLiaHUa4aOUvGgIRtNz/g1CpYACcVSZJor/YflpemFNhOJizc7ix+JI3AS0JYdqn2FG
	F37HH03+QckPrB2LvUX3fGstKmIQQ9QTI1MPT/deKpzOwllTa2b+PTiZcp4zTur1y9gi7iyHtZyJO
	QzLT42f/3ev/ZShH04FGF1cSKpqHEHlqRRk8a23Y6Knzi4RfUUTToWsAaGgF7Px6GozzZFC245dpp
	tzrH+vKVNOvzJrnpg+ubXKC2rS4IpYmDmMBiJTcp4vIcYLGVN4ntdIEZh9q8SU9Vet/PyCiimLndH
	rS3JI222VrMQtPM3FB5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Zs6-00054e-KB; Fri, 30 Aug 2019 05:54:54 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Zrr-00053z-MD
 for linux-nvme@lists.infradead.org; Fri, 30 Aug 2019 05:54:41 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 0454968B20; Fri, 30 Aug 2019 07:54:36 +0200 (CEST)
Date: Fri, 30 Aug 2019 07:54:35 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v8 7/7] nvme: fix ns removal hang when failing to
 revalidate due to a transient error
Message-ID: <20190830055435.GB8492@lst.de>
References: <20190823055442.19148-1-sagi@grimberg.me>
 <20190823055442.19148-8-sagi@grimberg.me> <20190825013813.GC23887@lst.de>
 <20190825205700.GA3911@lst.de>
 <a7dca3f1-5b51-ac6a-cfee-2cb8a5e3718d@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a7dca3f1-5b51-ac6a-cfee-2cb8a5e3718d@grimberg.me>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_225439_879795_54C458D3 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 James Smart <james.smart@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 11:18:04AM -0700, Sagi Grimberg wrote:
>
>> After looking into various revalidate_disk refactoring I think we could
>> do something simple like this to just ignore the non-fatal errors
>> (won't apply as is, but you get the idea):
>
> This will quietly ignore errors even for the routine ns allocation path,
> do we want that to happen?

Why not?  Why would we treat an -ENOMEM or transport error different
when doing a scanning (e.g. because we have to reconnect) vs just when
revalidating?

> Also, the same practice needs to be applied to nvme_report_ns_ids that
> comes shortly after...

Yes.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
