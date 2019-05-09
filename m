Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19430194CC
	for <lists+linux-nvme@lfdr.de>; Thu,  9 May 2019 23:43:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6fmib6kX5W5Y4jC84g3r18uuJT68ULViAT4wfPLt38g=; b=Tb9S4+9hhTL8sGlVliAMMzTxy
	utQ+nbZ5DRaKArTRJhYXz/F9BfgWUT+45y0bzdHkoTyHc8AxLaaWhGmtRrbhLnHUN7VqodyDEASCh
	e2kaEG1oDsZOCk3NIWxypVSFyc1/jVvk4cLvWSGYIW252HROLopR/YMsFOPqXmDy7PM6NTEbYU1bp
	jbzisv1xKed2N8s5Sressf6YVrEbyy4fZVBfue6JTBC4se0aBhXcFywvdHBpUR0nDjMzqnDTLZmUE
	KnGWJqL34qSLgOe58DfBh1SA/XgQr8tWPwYEdyW9X1YLvHdXjBvDYFg7BcZEe4bpdrnJy+bR+AqDa
	ilP5eEXFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOqop-0001zU-7W; Thu, 09 May 2019 21:43:11 +0000
Received: from linux.microsoft.com ([13.77.154.182])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOqoj-0001z5-Sq
 for linux-nvme@lists.infradead.org; Thu, 09 May 2019 21:43:07 +0000
Received: from localhost.localdomain (unknown [131.107.160.135])
 by linux.microsoft.com (Postfix) with ESMTPSA id 8A0B4208956A;
 Thu,  9 May 2019 14:43:04 -0700 (PDT)
Subject: Re: [PATCH, RFC 1/2] nvme: change locking for the per-subsystem
 controller list
To: Christoph Hellwig <hch@lst.de>
References: <20190508075508.28552-1-hch@lst.de>
 <6b9497da-a1d1-84ed-f59c-ef602297a2aa@linux.microsoft.com>
 <20190509061716.GD15229@lst.de>
From: Edmund Nadolski <ednadols@linux.microsoft.com>
Message-ID: <dc2d70e6-3607-a4f2-c8a7-a41220ea5085@linux.microsoft.com>
Date: Thu, 9 May 2019 14:43:04 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190509061716.GD15229@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_144305_956650_279FA030 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: hare@suse.de, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/8/19 11:17 PM, Christoph Hellwig wrote:
> On Wed, May 08, 2019 at 09:47:42AM -0700, Edmund Nadolski wrote:
>>> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
>>> index eebaeadaa800..4f4ffcce7416 100644
>>> --- a/drivers/nvme/host/core.c
>>> +++ b/drivers/nvme/host/core.c
>>> @@ -2346,13 +2346,11 @@ static int nvme_active_ctrls(struct nvme_subsystem *subsys)
>>>   	int count = 0;
>>>   	struct nvme_ctrl *ctrl;
>>>   -	mutex_lock(&subsys->lock);
>>>   	list_for_each_entry(ctrl, &subsys->ctrls, subsys_entry) {
>>>   		if (ctrl->state != NVME_CTRL_DELETING &&
>>>   		    ctrl->state != NVME_CTRL_DEAD)
>>>   			count++;
>>>   	}
>>> -	mutex_unlock(&subsys->lock);
>>>     	return count;
>>>   }
>>
>> Would lockdep_assert_held(&nvme_subsystems_lock); be beneficial here?
> 
> It certainly would not hurt, although it seems a little overkill for
> a trivial helper with a single caller.

True, the thought is that it would be indicative that subsys->lock is not
needed in this context.

Ed


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
