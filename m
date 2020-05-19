Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C14311DA0D4
	for <lists+linux-nvme@lfdr.de>; Tue, 19 May 2020 21:18:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=D3xrdKfXf/HQaBA1Irc39fBOGUV6gPOfvymN3jAgMkc=; b=kO+x6uGNqwqj3igsJaVQyI6vG
	DonqStHoZlvOfjDTHJLXQ6xCGz1EJBMROmyXKsOA056sWi/9y8Su2+C7iBDb+OnEm9FaGY7aK1ceC
	RGFfAFBQZap059EG2W/IvrA+2fIp8eV6qCoR5/W3EB6ska7Crsh2BTJZhewR5SXe9FLZo0H0nzus/
	1otsZ2owNOuVE7KfQjsNIMKJz9t5JC53jNWO7VjSuDF4WeB1cRaRQAdEKmIPTZKGNGPsF4InKpQ88
	IBshMWKyiQzfPr9LUb0OqxH77exxe5BRvTMR395QzRynb3X+by9SMRB/BgYrQ0pWOtlZuBQoiBMnH
	ZGrWo6Tdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb7kP-0002Ex-Ku; Tue, 19 May 2020 19:17:53 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb7kL-0002EG-0u
 for linux-nvme@lists.infradead.org; Tue, 19 May 2020 19:17:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589915867;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=JyRzJsPOwc6h25qRhnKS5bapjz10wcN3kURUSo6W/9o=;
 b=SvHhiMwGarAOfd19CppsavHYe5B95V2HKnsbE0lhhaw+cRgCVIljV9LlAIE1zaNkMxyWvy
 xYzz0tYDXkWSocORyz/Wlgi3flR+3N5thTNKeqmZR/YDTTSuw4XgXW1BG4bqpYd36mKvcV
 5iBzxRvUepJyqlrUMSPBDFirZmVMedE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-250-zkJ46T8vNhiaSjXb3AAxRA-1; Tue, 19 May 2020 15:17:46 -0400
X-MC-Unique: zkJ46T8vNhiaSjXb3AAxRA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EA03C835BB8;
 Tue, 19 May 2020 19:17:44 +0000 (UTC)
Received: from [10.3.112.120] (ovpn-112-120.phx2.redhat.com [10.3.112.120])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4823567167;
 Tue, 19 May 2020 19:17:39 +0000 (UTC)
Subject: Re: [PATCH v2 0/2] nvmet: fixup processing async events
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <1589828396-144513-1-git-send-email-dmilburn@redhat.com>
 <BYAPR04MB4965E89E9794EC5D80D830BC86B90@BYAPR04MB4965.namprd04.prod.outlook.com>
From: David Milburn <dmilburn@redhat.com>
Message-ID: <d5453672-54b1-b456-506e-5bf69adc9e43@redhat.com>
Date: Tue, 19 May 2020 14:17:39 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <BYAPR04MB4965E89E9794EC5D80D830BC86B90@BYAPR04MB4965.namprd04.prod.outlook.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_121749_142521_44064380 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "hch@infradead.org" <hch@infradead.org>,
 "dwagner@suse.de" <dwagner@suse.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Chaitanya,

On 05/19/2020 03:40 AM, Chaitanya Kulkarni wrote:
> On 5/18/20 12:00 PM, David Milburn wrote:
>> This patch series changes how async events are processed
>> and freed based upon review from Christoph Hellwig and
>> Daniel Wagner, this was discovered while debugging a memory
>> leak after clearing connection on the target.
>>
>> Changes from v1:
>>    - free aens separate from completing requests in nvmet_async_events_free().
>>    - declare struct nvmet_async_event in second patch.
>>
>>
> I'm still trying to reproduce the issue with nvme-loop.
> Are able to reproduce this issue with nvme-loop ? if so can you
> please share the steps ? OR this is transport specific ?
> 

We have only tested with rdma.

Thanks,
David


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
