Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 638B918F90D
	for <lists+linux-nvme@lfdr.de>; Mon, 23 Mar 2020 16:57:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date
	:Message-ID:From:References:To:Subject:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cpsjwN2vr+NzFGFfbnD5NrxK2f4E8c3JTClwYJNchhw=; b=bCJqh/SGsoEfb6
	nrc84R2Ht1aJpUqyfXULQNKdHADjGYpWhN4pE4AgBHh6VORDiO6JT8Cm/4Jvc+G9TsrT3FbUTYD1m
	8948e8sU2Rn+FPAAVMH417XLCWPyyAy6tKG8uEEYEn75BXZ2V0+i45nuiQwenJ2TjyxQiXvo6oasI
	CeFJFXXcrfwI7k4iYj9rDuNKK45tgU40H1HbFmwqhE+3HW4Tfqcj+9BKMNOFyNoMA08bFRw83QAUu
	7NmdcNnGDBUhJdovmv9gsG1t+O5OR4P9PSGVdw+A7E52mpYwxellZJOXkIShT+mUJ+WMcj+zK16Cr
	9mhGhqqphn33U/ybStEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGPS5-0002jv-GG; Mon, 23 Mar 2020 15:57:21 +0000
Received: from us-smtp-delivery-74.mimecast.com ([216.205.24.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGPRs-0002ZQ-9C
 for linux-nvme@lists.infradead.org; Mon, 23 Mar 2020 15:57:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584979025;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=DO9z3Cg+kTdRZAzH5WcK0mr4/4dfJ+7mj+P+LDuSHw4=;
 b=FBgGE7ZT+0b1hdrI5nZpD7hhR2lN0hpUELG05+3YYI52P9fSHjGJDVe75uFfrqir2r8kvj
 ijpmY1Q0ukRF2I9Kk85u4w9GzMvmIHyW20Nf0SnZ1s4ek8QCCpUCV1udqERiqALW7AP8Ty
 vsfo9b3fzsA2Tfc03/dhpMdSS7WGU7M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-457-TxWQw37rN3m_wqA0H23AlA-1; Mon, 23 Mar 2020 11:57:03 -0400
X-MC-Unique: TxWQw37rN3m_wqA0H23AlA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A02231005513;
 Mon, 23 Mar 2020 15:57:02 +0000 (UTC)
Received: from [10.3.128.7] (unknown [10.3.128.7])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 20A7619C4F;
 Mon, 23 Mar 2020 15:57:01 +0000 (UTC)
Subject: Re: nvmet: Kernel oops when doing mkfs on nvme-tcp device
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <17c25d8d-0dc2-9dc8-2b65-954034c23646@redhat.com>
 <507887d2-96dd-b0ee-bb05-519039d98359@grimberg.me>
 <e16baf6a-c9e0-2249-6d7a-4e8d58f8e9b6@redhat.com>
 <f390f5a1-a80f-44d7-5d69-642119eef9b8@grimberg.me>
From: Tony Asleson <tasleson@redhat.com>
Organization: Red Hat
Message-ID: <c8fce5f3-a01b-da38-820f-cf6caaa377ab@redhat.com>
Date: Mon, 23 Mar 2020 10:57:00 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <f390f5a1-a80f-44d7-5d69-642119eef9b8@grimberg.me>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_085708_442490_BB36AECF 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.205.24.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On 3/23/20 3:33 AM, Sagi Grimberg wrote:
> 
>>> Can you share which line *(nvme_tcp_io_work+0x303) map to?
>>
>> I'm not running a debug kernel so I don't think I have that available?
>> Please advise if otherwise.
> 
> Maybe you will still have frame pointers though?
> 
> If you run:
> gdb <path_to_mod>
> ...
>> l *(nvme_tcp_io_work+0x303)
> 
> Do you get anything useful?

Nope, sorry.


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
