Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B30DB0CA
	for <lists+linux-nvme@lfdr.de>; Thu, 17 Oct 2019 17:10:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fdJ9SMEWXOWNIf0dENLBo7VdtLtPkfkHE2ThkTUq1S8=; b=iRVpJeDTbuvkYz
	atoESSOlxlDg9eBjCrR6tEVt/udOi2CNLfZE7hQB57qcIvWN5k7BnSNarDOd9xunJEM5ep/tqoF2T
	QXrKy6qYvIRRMBNoy5G+M/PM+uxn0dCg4Pb17KBgBEs5KCQmftM7REJDhBGNjIsnfToJpLCj/tUUv
	mR9o4JP3RF7SjVc4FO8LE70IAWODql1X/JdS/vSA2XaCDYq6oL1+I5Zn7SAxxTo6iSn9vj2P/ZS4/
	qXlEpTZ+g8rOZhuuC3SVytWRAKXrwtOMVabbmPhKBldUnoLTNvIMQ45bjNZdwuRtD9EL0CuNu+WwA
	+UqyPH0j6aEaGtAuSKrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL7QR-0001Zq-VK; Thu, 17 Oct 2019 15:10:51 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL7QN-0001ZK-R8
 for linux-nvme@lists.infradead.org; Thu, 17 Oct 2019 15:10:49 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 3C17468BE1; Thu, 17 Oct 2019 17:10:44 +0200 (CEST)
Date: Thu, 17 Oct 2019 17:10:44 +0200
From: Christoph Hellwig <hch@lst.de>
To: David Milburn <dmilburn@redhat.com>
Subject: Re: [PATCH] nvme: check for dynamic controller model before
 verifying cntlid
Message-ID: <20191017151044.GA8989@lst.de>
References: <1571257402-15747-1-git-send-email-dmilburn@redhat.com>
 <20191017145054.GA8622@lst.de>
 <7aa48745-d729-3f8a-e657-cbaa588cc618@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7aa48745-d729-3f8a-e657-cbaa588cc618@redhat.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_081048_027688_2CFC6E66 
X-CRM114-Status: GOOD (  12.39  )
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
Cc: kbusch@kernel.org, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 10:08:30AM -0500, David Milburn wrote:
> Hi Christoph,
>
> On 10/17/2019 09:50 AM, Christoph Hellwig wrote:
>> On Wed, Oct 16, 2019 at 03:23:22PM -0500, David Milburn wrote:
>>> -		if (ctrl->cntlid != le16_to_cpu(id->cntlid)) {
>>> +		if (id->ctrattr && (ctrl->cntlid != le16_to_cpu(id->cntlid))) {
>>
>> Where do get the all-Fs cntrlid?  Identify Controller should return
>> the actual controller id, and the fabrics setup code also sets it up
>> to the return value of the connect command, which shouldn't be all-Fs
>> either.
>
> I see it in nvme_init_identify() after doing the nvme_identify_ctrl(),
> id->cntlid is FFFF causing the check to fail. There is a discussion
> in the NVMe over Fabrics spec, not specifically about identify, but
> with discover log page concerning dynamic vs static model and the
> value of cntlid, the target is a storage array.

Please trace down where it comes from, because I suspect your array is
buggy.  I guess it returns 0xffff from the connect command response,
which is wrong as that should contain the actual controller id, and not
0xffff which is passed in the connect command to request the dynamic
controller model.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
