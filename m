Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2FA218DDBB
	for <lists+linux-nvme@lfdr.de>; Sat, 21 Mar 2020 03:49:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date
	:Message-ID:From:References:To:Subject:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oIQ45NID4Glu+bGtMQs6/TCuYYX4WvPpZYf6Qki7vIU=; b=H2fbXbqm8QE2d/
	F8XVQGJtq/JSttvKVn/YKtVjpznt2Jc02a1r6XRI+q+8LppdGSMjV/wURgqyyyHLsVPMELX0YM83V
	4T3JgW7nnI7xJ8fhLARphkRa/7Y3lHJfF7AunDKe6kIAsV6UegEHgCpTQ7ZJjP+Iqs6vp04ujmeHL
	itq2rDmc+vi7ODEH08Qn6zS6sySEHg3kCi4gPYQ7ign7uQLCzrjl6bPTIMeGpqDJIb0DMkmP7k7+b
	rA0DoBQocuON6zObK8ckLPtHxvjsXIaVSXLqWuRYWkI5ZIrxXR3K8i4AGGQqA/Z9zcGV/9pBGqNTt
	7VFBFb6HCU1LZunINZcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFUCO-0001Sn-Sp; Sat, 21 Mar 2020 02:49:20 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFUCL-0001SR-06
 for linux-nvme@lists.infradead.org; Sat, 21 Mar 2020 02:49:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584758955;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=44On+XEkX1XJSRSF52jcKnVuDvvWkO3tCCc18hIihrg=;
 b=H1/ZsMaqAwnim97Mt0fHVvf3VqClafs0qWzL5ks19iaPig9ZWUFpUscMx/qByFdtWX+gsX
 NgqHMuK7KRFCRDNNQODiXLm2NbUNMV+pAm5YWWipw+Om01axxQVf2pvrcjRV+HVDqwXSnr
 EHXnfNQ/DmfOAb0EyLVp4/piBbqBz24=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-316-AcizIXx0O1yhIRwaBMuTxA-1; Fri, 20 Mar 2020 22:49:12 -0400
X-MC-Unique: AcizIXx0O1yhIRwaBMuTxA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E26DD100550D;
 Sat, 21 Mar 2020 02:49:10 +0000 (UTC)
Received: from [10.3.128.7] (unknown [10.3.128.7])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 457315DA7C;
 Sat, 21 Mar 2020 02:49:09 +0000 (UTC)
Subject: Re: [PATCH 1/6] README: Update URL for configshell-fb
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <20200320203946.37338-1-tasleson@redhat.com>
 <20200320203946.37338-2-tasleson@redhat.com>
 <BYAPR04MB4965D1F97C81DBCB0855646C86F20@BYAPR04MB4965.namprd04.prod.outlook.com>
From: Tony Asleson <tasleson@redhat.com>
Organization: Red Hat
Message-ID: <09a5821b-0f14-3414-3a35-2eddf87be6f6@redhat.com>
Date: Fri, 20 Mar 2020 21:49:09 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <BYAPR04MB4965D1F97C81DBCB0855646C86F20@BYAPR04MB4965.namprd04.prod.outlook.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_194917_115966_9E02438A 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.128.21.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Reply-To: tasleson@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 3/20/20 7:47 PM, Chaitanya Kulkarni wrote:
> On 03/20/2020 01:42 PM, Tony Asleson wrote:
>>   Installation
>>   ------------
>>   Please install the configshell-fb package from
>> -https://github.com/agrover/configshell-fb first.
>> +https://github.com/open-iscsi/configshell-fb first.
> 
> The link is not broken yet. The agrover is now redirected to
> the open-iscsi automatically by the github, so do we need this ?

Technically at the moment the link is getting redirected to the correct
location, it's not broken "yet".

However, I think it's better that a user ends up where the link shows
instead of them wondering why they put one thing in their URL and ended
up at a different one.



_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
