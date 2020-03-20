Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B4418DC26
	for <lists+linux-nvme@lfdr.de>; Sat, 21 Mar 2020 00:43:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date
	:Message-ID:From:References:To:Subject:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p5JahODiyw0ZQ2lmu0fqj2/+1HA20KV2MDdBPGD/Y6k=; b=eAKiIMavjHNToF
	xagcF82Fk7+CNvenwYydbLVl9lOZfG2+Xy3iXyV6NtvL7wyxNBhAxQNE2Nj/9NTMmCAvHfYSKyFWD
	PFWvOEmftfEKdyvsWVlEpfpjsJSWkx8HdVk/yxch7XIml1MeBhWS2kzw/zaIj09GuzBKO4n0Dfj9A
	/F0Vq1/xXrzpwNWB6v834vNvQqDePIzZmN1BQGA8ISvdubBZkLKnA4TbBDrDx+khmKO3i22IXaBln
	XvqTatOCQCZjC+uEWb8H22S1Po1wCWUS26RCfCi/q+aumCxfL4dNdq2C9o2Lqt9x+4ye+F5C3Uh/U
	mHiPjTo59CsCt7scZF4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFRIp-0006De-Jj; Fri, 20 Mar 2020 23:43:47 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFRIl-0006DA-2Z
 for linux-nvme@lists.infradead.org; Fri, 20 Mar 2020 23:43:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584747819;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=S/i7fVFypzH2qrVbDkmIsN4XsFTUFbHNABw3sVctMzw=;
 b=A6rnxSCYvcb4x2Pl4UBKfTjAsur41ZtcYCGZXRRrFV+kFhO5RKAjwna+VuAjuacrcSloXV
 Eao5M5DJmMQ/vqmiIxbkwgTN/I2isrRDn1w9bdZb3Nd/C26oHVYBOPxN23aEGfJDMsGCNo
 SvuFRx5bB4FwnpDJV5jcXrOvOLnBvcQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-38-DajVxBh8NWS3-wxr0nl2Mg-1; Fri, 20 Mar 2020 19:43:36 -0400
X-MC-Unique: DajVxBh8NWS3-wxr0nl2Mg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BB1D88017DF
 for <linux-nvme@lists.infradead.org>; Fri, 20 Mar 2020 23:43:35 +0000 (UTC)
Received: from [10.3.128.7] (unknown [10.3.128.7])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5E54D6EFA3
 for <linux-nvme@lists.infradead.org>; Fri, 20 Mar 2020 23:43:35 +0000 (UTC)
Subject: Re: nvmet: Kernel oops when doing mkfs on nvme-tcp device
To: linux-nvme@lists.infradead.org
References: <17c25d8d-0dc2-9dc8-2b65-954034c23646@redhat.com>
 <507887d2-96dd-b0ee-bb05-519039d98359@grimberg.me>
From: Tony Asleson <tasleson@redhat.com>
Organization: Red Hat
Message-ID: <e16baf6a-c9e0-2249-6d7a-4e8d58f8e9b6@redhat.com>
Date: Fri, 20 Mar 2020 18:43:34 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <507887d2-96dd-b0ee-bb05-519039d98359@grimberg.me>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_164343_191758_F162A5FB 
X-CRM114-Status: UNSURE (   7.69  )
X-CRM114-Notice: Please train this message.
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

On 3/20/20 5:54 PM, Sagi Grimberg wrote:
> Can you share which line *(nvme_tcp_io_work+0x303) map to?

I'm not running a debug kernel so I don't think I have that available?
Please advise if otherwise.

Thanks,
Tony


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
