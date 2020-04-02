Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF7719C45C
	for <lists+linux-nvme@lfdr.de>; Thu,  2 Apr 2020 16:36:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date
	:Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y7qAp7LslVfWjt6EAUrRFYx8LOVXJB2OgjD0qm5txVo=; b=lRYCVgay7lZZUi
	z/ydWX+u5TOqBpXE811OkfJCkeunHnJsfLTBPIMzmFJCoJMK5y5SYTGr/CaqcqIa3BQISLz45SdeG
	7Jdw6MiSVrw0eWC0d+/qZqmEWqhA9JPd+p4YfKbBHWmOQ/Q1qw/hD6gPua3aP9UtfGxGOWDdNu4lx
	k3FfRmyzeRODBTpl/DrS5qO2bbgpQ2n5/bUxC3SoX0j5z5L+5WawPhpHqUH7sAHe0YlaW+5W10N2T
	iIc63Hl/3WTTR7r0XyRCr+JM+KIYX09/SdvQ6z27pj4rPCJy1NhA2amjNXQG+xdmoBnc0dilS+0RN
	LBkCYPAZKErg4Zeh/bXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK0x7-0003M3-7q; Thu, 02 Apr 2020 14:36:17 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK0x2-0003LW-HY
 for linux-nvme@lists.infradead.org; Thu, 02 Apr 2020 14:36:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585838171;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TGy8reDpCYVqlodR/H3yQIpESJImOsn7IZxCxfmdSRI=;
 b=GLBfNopg8InJOZGTlcFwwQJCTCrladiUOk+4cl+ey7e90XWniX4wNHP4xZQYwEpuOEJtze
 JFY10K8zS/1FqgvOvlwmXgyVtJTgr4sCtcTbWQnnxhIfxy5jLLwbZ27i1rUY4iEA7r7H59
 vQHhLvGGmwxlOE62lZRdDFfdbsj5q9I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-256-f2JhLBJoOdCeHCx4PsLfPw-1; Thu, 02 Apr 2020 10:36:09 -0400
X-MC-Unique: f2JhLBJoOdCeHCx4PsLfPw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C32F18017F6;
 Thu,  2 Apr 2020 14:36:07 +0000 (UTC)
Received: from [10.3.128.6] (unknown [10.3.128.6])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 850E71147CF;
 Thu,  2 Apr 2020 14:36:05 +0000 (UTC)
Subject: Re: [PATCH] nvmet: fix NULL dereference when removing a referral
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Sagi Grimberg <sagi@grimberg.me>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <20200401231627.23553-1-sagi@grimberg.me>
 <BYAPR04MB49659E5E7A701C15128CC59386C60@BYAPR04MB4965.namprd04.prod.outlook.com>
From: Tony Asleson <tasleson@redhat.com>
Organization: Red Hat
Message-ID: <56e3298c-f041-3a4b-28be-d611bfd5956e@redhat.com>
Date: Thu, 2 Apr 2020 09:36:04 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <BYAPR04MB49659E5E7A701C15128CC59386C60@BYAPR04MB4965.namprd04.prod.outlook.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_073612_652667_97B6F5A0 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
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
Reply-To: tasleson@redhat.com
Cc: Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 4/1/20 7:39 PM, Chaitanya Kulkarni wrote:
> On 04/01/2020 04:16 PM, Sagi Grimberg wrote:
>> When item release is called, the parent is already null.
>> We need the parent to pass to nvmet_referral_disable so
>> hook it in .disconnect_notify.
>>
>> Reported-by: Tony Asleson<tasleson@redhat.com>
>> Signed-off-by: Sagi Grimberg<sagi@grimberg.me>
> 
> This patch seems to fix the problem, Tony please confirm.

Confirmed

Thanks!


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
