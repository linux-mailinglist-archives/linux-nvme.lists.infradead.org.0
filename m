Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD0E97AF69
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Jul 2019 19:14:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RKuxlMM19qXA1iNEFacDH0fy0tjQQEjMZdHbajrvUgo=; b=TtIqQIoeyfWyn/vhQ+8ZRAHNJ
	j53NL+q2il3+5IaiwQSypMXZQINNUBcpc4SRamDK6fQrzldu4ptHf3gmon9uuNz2pAaO6Gk/U58dn
	5S/tVrG2wbpErglnkJnMF2jOVPcEZzwDFkn9aZWWX4p7dKRepytrYOCnqVc0THt7xs24Yi/Mr++PS
	Ss8zhC5rvra4MgMWoS+x826ra7wd01pr/2aPvkgD8A+UF22GwtfR1Kd9oKykngktzHU+60eUYpwqL
	+yhAm+6PDBfHium+efefyqmBo/yYLgwskZh2gC6cXex6Ys2FrKR7tS1Ct84nSVyyRUV/A3NsLknaA
	0dR6idF0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsVhn-0007wG-3I; Tue, 30 Jul 2019 17:14:31 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsVg9-0006Y0-GF
 for linux-nvme@lists.infradead.org; Tue, 30 Jul 2019 17:12:51 +0000
Received: by mail-oi1-f196.google.com with SMTP id a127so48432308oii.2
 for <linux-nvme@lists.infradead.org>; Tue, 30 Jul 2019 10:12:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=6xuUBzhaaOSVTZc40piS/mN9Baqvhg5v4W9umaScqn8=;
 b=trKRmd8UHEm4zpcop3btrdOUnFoRkrcwf1JVFKrmZyXnBCCiep8ZWepicNu3fT5osr
 8pjcZA88z5Qlzk9sP6gM24eWGNlYGpc7l4vULOg6I9nXUQiHrEkU815dBbJq60/3GSf5
 qoztcuulO/THpN9Yyr2tYHgAbeAbVRTUwYvqbfk6akjMAbfVtStIrV9C6QjzrzkGlENq
 W4E88eTsSTlvXOo0bP30iCSSF2PuiYhO8K7cGmwBhUHV4en4Qf+THdlwbgUnXi0ujof+
 6jpJEgFS7ihnDw/ES3grUK4dyQ8UEpvXdsxl8gef5IYVPSj76somi/Dj4+cqeW9F91kJ
 dAgw==
X-Gm-Message-State: APjAAAVCqxtJEZ8BxrqXxk+bNeab+CsqNoWeUXWLZseF3KWm5+EXcCOE
 eeKLzseXaTHoAVIzhUcHUnQ=
X-Google-Smtp-Source: APXvYqx5tPjk6m0QD56g0/p3mz+Zb3Ue6FT+BQchPhLohXXJA9cR/WSKRKpXsb9iHb1Pnq817tBcPw==
X-Received: by 2002:aca:7585:: with SMTP id q127mr5276320oic.113.1564506767439; 
 Tue, 30 Jul 2019 10:12:47 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id q11sm20533689oij.16.2019.07.30.10.12.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 10:12:46 -0700 (PDT)
Subject: Re: [PATCH rfc 1/2] nvme: don't remove namespace if revalidate failed
 because of controller reset
To: Ming Lei <tom.leiming@gmail.com>
References: <20190729233201.27993-1-sagi@grimberg.me>
 <20190729233201.27993-2-sagi@grimberg.me>
 <CACVXFVM+WGwQeqiK-poVKoQR4hVxCMWu0n0-HdVGb8EDDCySSA@mail.gmail.com>
 <464bb489-552f-b67e-545d-48616a1e76dd@grimberg.me>
 <CACVXFVO+e5De4+o8cqzvaVbMU22geicCbpmfk6zZStykEiDVmw@mail.gmail.com>
 <82a91815-f7ed-5931-58ac-5893e68cc940@grimberg.me>
 <CACVXFVN6o+dOFwDV=FPSHjVnhYSLBUWNHsXc4B=fwE5PAny_dQ@mail.gmail.com>
 <8bd6d219-f4fd-de58-a341-257c6274eddd@grimberg.me>
 <CACVXFVNT5sjk4MC6qJoBFug8K9YgEFQEy6LSknJT6=O-2ispMg@mail.gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <2825eb74-1df5-5dd2-3e90-c696bc7fa3d1@grimberg.me>
Date: Tue, 30 Jul 2019 10:12:42 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CACVXFVNT5sjk4MC6qJoBFug8K9YgEFQEy6LSknJT6=O-2ispMg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_101249_950337_6BF7A30E 
X-CRM114-Status: GOOD (  17.78  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 linux-nvme <linux-nvme@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> Yes, and again, addresses the case that the namespace is going away.
>>
>> So I think we are in agreement? I only need to change the commit
>> message from: "the revalidation I/O" to "the admin I/O" ?
> 
> That words of 'admin I/O' isn't related with the patch or issue.

But it is, the original issue was due to the fact that
nvme_revalidate_disk() I/Os such as nvme_identify_ns() or
nvme_identify_ns_descs(). This was the original issue.

>> Yea, this should do the trick I guess:
>> --
>> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
>> index fa31da0762b9..d01976c93160 100644
>> --- a/drivers/nvme/host/core.c
>> +++ b/drivers/nvme/host/core.c
>> @@ -3428,7 +3428,8 @@ static void nvme_validate_ns(struct nvme_ctrl
>> *ctrl, unsigned nsid)
>>
>>           ns = nvme_find_get_ns(ctrl, nsid);
>>           if (ns) {
>> -               if (ns->disk && revalidate_disk(ns->disk))
>> +               if (ns->disk && ctrl->state == NVME_CTRL_LIVE &&
>> +                   revalidate_disk(ns->disk)
>>                           nvme_ns_remove(ns);
>>                   nvme_put_ns(ns);
>>           } else
> 
> If RESET is triggered just inside revalidate_disk(), and not done after
> revalidate_disk() returns,  there is still race between reset and scan work.
> 

You are correct, this was why I had the ctrl->state check after
revalidate_disk so if it failed because we are in a reset we should
not remove the namespace.

We need a reliable way to NOT remove the namespace if revalidate_disk
failed because the controller is resetting and we don't have a channel
to the controller at this very moment...

Keith,

As for the failure during reset scenario, this is happening only when
the namespace is about to go away or something is seriously wrong right
(looking from where nvme_kill_queues is called).

Do you still think we should avoid calling the revalidate_disk if the
controller is resetting?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
