Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C037CB97
	for <lists+linux-nvme@lfdr.de>; Wed, 31 Jul 2019 20:12:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FohYvZ0d36vhx8bdmdxswVbpEwlVsruoyMTH7yyPGyQ=; b=jjrt3KO68pVLKORVDZXrvcV7M
	9Et8/3aJPeIv7almHNSUojNvmDo9jK3PtKq+p0z7GF0Now6gSo3qodfZlF+rDU5REk7gRvEZWyxAZ
	1lOsGbvmZ1sh9v6cblnTn/DZpKuDNjTug41F+6ky8XBswai5d+fyIwcDnDtO/kv4GKJoxJEWlsnEi
	UF2OgXckgLqh8Lc04e2HmksqX0FEoYTARjULBGWusWJJNm1oW4sIdbyasqInA1SW+rijigiPuLAC3
	APIUfcyXVJ2yxz0ZvvZcATHjDtGPkioJBPVG2B/P0tW/rLGp452zK05TjT3XLB2Gaog+UoajyL6gm
	pv0YSHhMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hst55-00048z-Hx; Wed, 31 Jul 2019 18:12:07 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hst51-00048e-0G
 for linux-nvme@lists.infradead.org; Wed, 31 Jul 2019 18:12:04 +0000
Received: by mail-oi1-f196.google.com with SMTP id g7so51454554oia.8
 for <linux-nvme@lists.infradead.org>; Wed, 31 Jul 2019 11:12:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qoGvphNCYL19WBOlt6FIQ5C+6H7A9UiKS6NqOEybdfU=;
 b=WhnhbKvZrb7/ioq/mQ5x7IXrKWGh0uNDdkRPphPhNBtqULVqvmw18PlBcDPhVrTvGD
 a5QRif85NFoVAMKDCB0OgphA+hHvT9F69yJjyqOi8Im08usKgwNFUf4ruNH4fj8r9giG
 d4160j0VMLgYODoQSXZR7oiDv14tRBAjZLsCp2ErBb7WWg/YDzpSzR8Xmim7O1/u0G7i
 MzTzGOsQ3jEK54xh7ULV701PfunTT+LQEF0K9OoaaYYOR0PW3QG8oeweC3QaKwjX2CAk
 G92z9Iwpcwmq1+4ZEmwHFrPf9dVcs8hNtnjH+fDuvpphf1xhD7AfziEZzBSlxq6s4BU2
 HHug==
X-Gm-Message-State: APjAAAWB8oJaNc7Dg9rMjIBRfqve/oS5JZ3IyAKRIz1CIHRGfDL9+QME
 xJsk88IUATSQhHfWkpoOUqbyORCY
X-Google-Smtp-Source: APXvYqzTzIpqDPhH5wAdWgVKI4ufSPLOWyf+Yn12n4gWh/Nv59ZVWuFuekJYvzODTbaZRwehMYPnJQ==
X-Received: by 2002:aca:b254:: with SMTP id b81mr25829453oif.53.1564596720521; 
 Wed, 31 Jul 2019 11:12:00 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id p188sm23853346oic.54.2019.07.31.11.11.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 11:11:59 -0700 (PDT)
Subject: Re: [PATCH rfc 1/2] nvme: don't remove namespace if revalidate failed
 because of controller reset
To: Hannes Reinecke <hare@suse.de>, Ming Lei <tom.leiming@gmail.com>
References: <20190729233201.27993-1-sagi@grimberg.me>
 <20190729233201.27993-2-sagi@grimberg.me>
 <CACVXFVM+WGwQeqiK-poVKoQR4hVxCMWu0n0-HdVGb8EDDCySSA@mail.gmail.com>
 <464bb489-552f-b67e-545d-48616a1e76dd@grimberg.me>
 <CACVXFVO+e5De4+o8cqzvaVbMU22geicCbpmfk6zZStykEiDVmw@mail.gmail.com>
 <82a91815-f7ed-5931-58ac-5893e68cc940@grimberg.me>
 <CACVXFVN6o+dOFwDV=FPSHjVnhYSLBUWNHsXc4B=fwE5PAny_dQ@mail.gmail.com>
 <8bd6d219-f4fd-de58-a341-257c6274eddd@grimberg.me>
 <CACVXFVNT5sjk4MC6qJoBFug8K9YgEFQEy6LSknJT6=O-2ispMg@mail.gmail.com>
 <2825eb74-1df5-5dd2-3e90-c696bc7fa3d1@grimberg.me>
 <0e103ae2-b0b5-28e5-bfea-35d8f683809a@suse.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <ef157a14-748b-08a1-b5e5-f5f9676988f7@grimberg.me>
Date: Wed, 31 Jul 2019 11:11:51 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <0e103ae2-b0b5-28e5-bfea-35d8f683809a@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_111203_048702_D1CD45FF 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme <linux-nvme@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> You are correct, this was why I had the ctrl->state check after
>> revalidate_disk so if it failed because we are in a reset we should
>> not remove the namespace.
>>
>> We need a reliable way to NOT remove the namespace if revalidate_disk
>> failed because the controller is resetting and we don't have a channel
>> to the controller at this very moment...
>>
> A similar thing is true for the 'ns_head' structure; I could easily
> envision a scenario where all paths are dropped (due to revalidate
> failures or whatnot) with all controllers in reset.

Hannes, paths should not be dropped in controller resets, only when
the controller is going away. Its simple as that.

> But as all paths are dropped struct ns_head doesn't have any reference
> to any namespaces (and consequently, to any controller), and will be
> failing all I/O before itself being removed.
> It will be re-created after resetting completes and all namespaces are
> re-attached, for sure, but it still means that we're getting I/O errors
> where we really shouldn't.

Paths should only be removed when the controller is going away, not when
it is temporarily disconnected.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
