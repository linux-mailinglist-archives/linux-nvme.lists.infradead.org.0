Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5F11F4E86
	for <lists+linux-nvme@lfdr.de>; Wed, 10 Jun 2020 09:06:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=373yH18bC9Ip0uXOLvc3yrmE2yERJENivbYNrDBn950=; b=kavDkJbwNJFAmTqnEAHeiiU1r
	QVJ7DV9by8d6ISRXJ6R9lvDIW0WGx1W2OQgK6Ttx2A4468gp4cwrv2q3YtBCh6mMkpcNQWB14ACUt
	H/+U+9uAwf52ApZ0ShShNY+4j8dU+SscQBUd3uxi0VxNZwtFD4QC5NaicYF4TZ5xAUCR4D971NC8v
	+gDTXxL1I4k2OBpshsumdOpaVspOFW6EvYfS2Y2PgRS9TMOtPcMEtk+FEeJxzQ4GLedh0e1qFKhqc
	/G+fJYsbvy/mHMElKBeinYyuoAIgBz6S5jVYLJAxCceZ11z7TmSuGgOF3a8N1QmRDd6DWfXXhQCGy
	W1borEeeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiuoG-0007lC-Hj; Wed, 10 Jun 2020 07:06:04 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiuoC-0007kk-3L
 for linux-nvme@lists.infradead.org; Wed, 10 Jun 2020 07:06:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591772757;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=i082/k7X66VpKA4BArVOYwDebI6I8dBAhqufU60X7Yk=;
 b=W4sWQ4OE4G7Ni+yY9LVtOukfm6yfYmPKxNI590kvgC179nPP6bv09ojLimndOlsfelOAES
 o7MII9t4NHiSue25i7W/PP6P69plfBiDOTgzrDqHjnm3dELwaRQWDej9RmvvRZxX3qZL0e
 r+ZlZlQSuIH7oYaNPzTpWhaRxCjLKag=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-191-mxvUOJXUPm2vgless2ibYg-1; Wed, 10 Jun 2020 03:05:55 -0400
X-MC-Unique: mxvUOJXUPm2vgless2ibYg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BE639835B41;
 Wed, 10 Jun 2020 07:05:54 +0000 (UTC)
Received: from [10.72.12.113] (ovpn-12-113.pek2.redhat.com [10.72.12.113])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id CA981891E2;
 Wed, 10 Jun 2020 07:05:53 +0000 (UTC)
Subject: Re: [PATCH nvme-cli] nvme-print: fix smart log temperature output in
 json mode
To: Keith Busch <kbusch@kernel.org>
References: <20200609145422.22386-1-yi.zhang@redhat.com>
 <20200609150331.GA189247@dhcp-10-100-145-180.wdl.wdc.com>
From: Yi Zhang <yi.zhang@redhat.com>
Message-ID: <21f86bab-49cf-903d-1b66-ceaf24193d7f@redhat.com>
Date: Wed, 10 Jun 2020 15:05:50 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200609150331.GA189247@dhcp-10-100-145-180.wdl.wdc.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_000600_215925_D312C95E 
X-CRM114-Status: GOOD (  16.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.120 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 6/9/20 11:03 PM, Keith Busch wrote:
> On Tue, Jun 09, 2020 at 10:54:22PM +0800, Yi Zhang wrote:
>> Signed-off-by: Yi Zhang <yi.zhang@redhat.com>
>> ---
>>   nvme-print.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/nvme-print.c b/nvme-print.c
>> index 7414280..d63b402 100644
>> --- a/nvme-print.c
>> +++ b/nvme-print.c
>> @@ -593,7 +593,7 @@ static void json_smart_log(struct nvme_smart_log *smart, unsigned int nsid,
>>   	char key[21];
>>   
>>   	unsigned int temperature = ((smart->temperature[1] << 8) |
>> -		smart->temperature[0]);
>> +		smart->temperature[0]) - 273;
> I usually consider json output as something to be consumed by another
> program rather than by a human, so we've not done much manipulation from
> the spec defined units. It's just a serialized representation of the
> structure.
I checked this field in the spec, it make sense to keep Kelvin here.
So drop this patch, thanks.

> If you need a more human friendly output, we can add flags to refine the
> output, but we can't just change the default reporting from Kelvin to
> Celsius since that may break existing programs interpreting the current
> json.
>


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
