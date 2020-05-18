Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70FE71D7A21
	for <lists+linux-nvme@lfdr.de>; Mon, 18 May 2020 15:37:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WmEvsKonGismi+4DNPomN9GzihnOr34hu04UzARgvPw=; b=SrfH/hVMC7csl2eqtDMx715L5
	uJV+QCIKUWTLMQSpZaWbzqI+bpbGXv1/FAmMZKT0ZzWs4EqsUtg7OYc/AX8E+3AT6nmyMUxgjmAh6
	1SYhykwopY66OdxziVYw08jb/Rzu2CWvD1/Ha4VdoI6RxaqNsfJEv4+JlqXztRZYjwEOwK9ChX/AO
	KqBL13W4WSrYWVEKUUKK0X/Zui37Q6Uh//KhmhPBo/+CKPDl7HVBqEblEYNxEXBrOtTSG38nFGlch
	Su7pSKPYBQWQG2dJVNSn9MoWsewUJnf8BwMcTHT9shrP5Aoj821iOAWQso3w/mBLaBDe3e7D8R3bf
	gxQxeWWiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jafxl-0001u3-MJ; Mon, 18 May 2020 13:37:49 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jafxg-0001tA-Fr
 for linux-nvme@lists.infradead.org; Mon, 18 May 2020 13:37:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589809063;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=J8aaBmoase+hzzuH+g9X+RradOyRLlW5LzwRPqPqaBI=;
 b=V+e/LRaYuMoLpE9F7sZY8kXf+1bu3UJwgKNW4hSrBHEH8kuyqWzOruY3aF7oRtjq8lZRUC
 owHPyQkt2udBxwm4+twB25Oj37E+zPqt/GwrxiGZHNY6QoRULTj+sDCFsyaGZqw4zNLmas
 mA/JIaOt7r6NC/ehzhyfv1zj2MFjjeM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-363-19RWsccoPMif35QmbuLESw-1; Mon, 18 May 2020 09:37:41 -0400
X-MC-Unique: 19RWsccoPMif35QmbuLESw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 182F51005510;
 Mon, 18 May 2020 13:37:40 +0000 (UTC)
Received: from [10.3.112.213] (ovpn-112-213.phx2.redhat.com [10.3.112.213])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8E2095D9DD;
 Mon, 18 May 2020 13:37:39 +0000 (UTC)
Subject: Re: [PATCH v2] nvmet: nvmet_async_events_process always free async
 event to avoid memleak
To: Daniel Wagner <dwagner@suse.de>
References: <1589806918-9711-1-git-send-email-dmilburn@redhat.com>
 <20200518130733.5hfckxyskdom3dsv@beryllium.lan>
From: David Milburn <dmilburn@redhat.com>
Message-ID: <994479f6-0869-382a-c2b7-64991372c00e@redhat.com>
Date: Mon, 18 May 2020 08:37:39 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200518130733.5hfckxyskdom3dsv@beryllium.lan>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_063744_602494_8ACD7B57 
X-CRM114-Status: GOOD (  16.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: hch@infradead.org, chaitanya.kulkarni@wdc.com,
 linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Daniel,

On 05/18/2020 08:07 AM, Daniel Wagner wrote:
> Hi David,
> 
> On Mon, May 18, 2020 at 08:01:58AM -0500, David Milburn wrote:
>>   static void nvmet_async_events_free(struct nvmet_ctrl *ctrl)
>>   {
>> +	struct nvmet_async_event *aen;
>>   	struct nvmet_req *req;
>>   
>>   	mutex_lock(&ctrl->lock);
>> -	while (ctrl->nr_async_event_cmds) {
>> +	while (ctrl->nr_async_event_cmds && !list_empty(&ctrl->async_events)) {
>> +		aen = list_first_entry(&ctrl->async_events,
>> +				       struct nvmet_async_event, entry);
>> +		list_del(&aen->entry);
>> +		kfree(aen);
>> +
> 
> nvmet_async_event_free() is called from nvmet_sq_destroy(). I thought
> this function should free all resources. Wouldn't this leak some memory
> if the condition gets false?
> 

It doesn't look like you want to process the nvmet_req if
ctrl->nr_async_event_cmds is 0, so making the test a ||
may end up bad. It looks like nvmet_add_async_event grabs the
ctrl->lock when adding an aen to the list, and it looks like
this maybe happening when ctrl->lock is let go before a
nvmet_req_complete().

Thanks,
David


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
