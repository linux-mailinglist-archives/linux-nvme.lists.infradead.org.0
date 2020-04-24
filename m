Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB141B6F70
	for <lists+linux-nvme@lfdr.de>; Fri, 24 Apr 2020 09:54:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pwRVobfzgSh0l/xyGcgHsgyjMTWB8bb2o9juh6XSids=; b=eZEmqqJXXWGv8D
	gdxK95Dlx3d6b02UkLBfZXviKdSu7BM3NCwaCjJkr+gdmRkVeGFFHILEwZnx3RimfE6gTi47R8ffM
	V0jctXzxHOIg/hJVRPdGlklnDLK3TGN3/OO6M+kbW21uCRpbDhH322pnN/gwePcd6405Xo9cCJVep
	syW+dMJMgb7b2Hk6gSK8qo6Zx2IvKVmNpGmG8CBvff6+VXy49ZUzzwN1TjgaHAlcW3UazI19V61nb
	7pMnq+lfOQOKEOfRkKG9FPxph+waj0tLN1aBUtiPlEBkkYVoxW+M8rPbdyZqJuWHOAdSw8uxvA/2g
	EXHOki1pkhYE2/ewlJHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRtA6-0003g1-O9; Fri, 24 Apr 2020 07:54:14 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRt9z-0003fP-6p
 for linux-nvme@lists.infradead.org; Fri, 24 Apr 2020 07:54:08 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id C99B568CEE; Fri, 24 Apr 2020 09:54:03 +0200 (CEST)
Date: Fri, 24 Apr 2020 09:54:03 +0200
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 15/17] nvmet: Add metadata support for block devices
Message-ID: <20200424075403.GA24906@lst.de>
References: <20200327171545.98970-1-maxg@mellanox.com>
 <20200327171545.98970-17-maxg@mellanox.com> <20200421153339.GF10837@lst.de>
 <3992e1fd-efad-0679-7817-f004b40cdc76@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3992e1fd-efad-0679-7817-f004b40cdc76@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_005407_403351_09026C19 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: axboe@kernel.dk, jsmart2021@gmail.com, sagi@grimberg.me,
 martin.petersen@oracle.com, shlomin@mellanox.com, linux-rdma@vger.kernel.org,
 israelr@mellanox.com, vladimirk@mellanox.com, linux-nvme@lists.infradead.org,
 idanb@mellanox.com, jgg@mellanox.com, oren@mellanox.com, kbusch@kernel.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Apr 23, 2020 at 08:25:24PM +0300, Max Gurtovoy wrote:
>
> On 4/21/2020 6:33 PM, Christoph Hellwig wrote:
>> On Fri, Mar 27, 2020 at 08:15:43PM +0300, Max Gurtovoy wrote:
>>> -	if (!nvmet_check_transfer_len(req, nvmet_rw_data_len(req)))
>>> +	if (!nvmet_check_transfer_len(req,
>>> +				      nvmet_rw_data_len(req) + req->md_len))
>> Shouldn't we also calculate the actual metadata length on the fly here?
>
> we calculate it during nvmet_init_req.

Indeed.  =


>
>>
>>>   	blk_start_plug(&plug);
>>> +	if (req->use_md)
>> Can't we use a non-NULL req->md_sg or non-null req->md_sg_cnt as a
>> metadata supported indicator and remove the use_md flag?  Maybe wrap
>> them in a helper function that also checks for blk integrity support
>> using IS_ENABLED and we can skip the stubs as well.
>
> I'll replace it with:
>
> static inline bool nvmet_req_has_pi(struct nvmet_req *req)
> {
> =A0=A0=A0=A0=A0=A0=A0 return req->sq->ctrl->pi_support && nvmet_ns_has_pi=
(req->ns);
> }

Actually I think you can simply check for a non-0 md_len, as we always
set them at the same time.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
