Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B915DB0C5
	for <lists+linux-nvme@lfdr.de>; Thu, 17 Oct 2019 17:08:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FVB86IM8gKdPfW2WDkLScazUr3/ftM/+4mRewYmNKBA=; b=WnIHJVj20J0IxSk7BIJ6NQ0Rb
	tjs7KVYL597oSCkWawP6qDXAo4echiCTkkps0NSMr7Tvd+sm1h57tNc8yrOENLt7+i+7Q2Axi+QBF
	GpJv/LXYlXKBMSf2bzlMKw0FJbmymZglQTLfLsVqZyPZhKGTTtAG99qUfN9pwzau7hThI9VNn7eks
	83ww7ljsRZpltiRriktMR5stkDe3jZOJb202rHeeRKvM8lNJ4olA7dSMyakAKnzgHfDV8aE/V+lsz
	Ubs6fpwiptt+XQ/BV9/08JgLlmb5qCg4RTMnxd9cfyy/JINXM0Dzx7MkHFjrGeZMa3hg+bao2J0Q/
	AaDAVHelQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL7OI-0008PM-0x; Thu, 17 Oct 2019 15:08:38 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL7OC-0008O6-BU
 for linux-nvme@lists.infradead.org; Thu, 17 Oct 2019 15:08:34 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 521EC30860D7;
 Thu, 17 Oct 2019 15:08:31 +0000 (UTC)
Received: from [10.3.116.90] (ovpn-116-90.phx2.redhat.com [10.3.116.90])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B1A22196B2;
 Thu, 17 Oct 2019 15:08:30 +0000 (UTC)
Subject: Re: [PATCH] nvme: check for dynamic controller model before verifying
 cntlid
To: Christoph Hellwig <hch@lst.de>
References: <1571257402-15747-1-git-send-email-dmilburn@redhat.com>
 <20191017145054.GA8622@lst.de>
From: David Milburn <dmilburn@redhat.com>
Message-ID: <7aa48745-d729-3f8a-e657-cbaa588cc618@redhat.com>
Date: Thu, 17 Oct 2019 10:08:30 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20191017145054.GA8622@lst.de>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Thu, 17 Oct 2019 15:08:31 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_080832_419788_519DE5D1 
X-CRM114-Status: GOOD (  18.28  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kbusch@kernel.org, sagi@grimberg.me, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Christoph,

On 10/17/2019 09:50 AM, Christoph Hellwig wrote:
> On Wed, Oct 16, 2019 at 03:23:22PM -0500, David Milburn wrote:
>> -		if (ctrl->cntlid != le16_to_cpu(id->cntlid)) {
>> +		if (id->ctrattr && (ctrl->cntlid != le16_to_cpu(id->cntlid))) {
> 
> Where do get the all-Fs cntrlid?  Identify Controller should return
> the actual controller id, and the fabrics setup code also sets it up
> to the return value of the connect command, which shouldn't be all-Fs
> either.

I see it in nvme_init_identify() after doing the nvme_identify_ctrl(),
id->cntlid is FFFF causing the check to fail. There is a discussion
in the NVMe over Fabrics spec, not specifically about identify, but
with discover log page concerning dynamic vs static model and the
value of cntlid, the target is a storage array.

Thanks,
David

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
