Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F6527CE01
	for <lists+linux-nvme@lfdr.de>; Wed, 31 Jul 2019 22:17:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FnJcZD7qpg4nv/kkwjbSahcbyAmvMalEOlD5L1k1ytg=; b=SMsrPIq+1AK+Ek8SoxmpCNM0f
	WgfZwEq0wmIsGnn/Mh8wui4X8qVhgp19oMNh68PYl5CBtLL19j4GN/xP5/sn46bdAx2KTDCBJIpv/
	YzQSm6JbxACNuElr+NBx5vfb1LhYO4GeKusBLkYDV+3Qi0O+Hbzreb6PSMxt375wLXpjJGseC5ZGk
	i0umSDhGtVdhyPj/LGwQu3CORxUV9xk0tiT15hKYNX2Qzuo28pftofWkIAJcZ7++SUwRzKTLSPugm
	aPC238d9eKt9S3mcBp/9MEgcCob7EUCgPeS0mr8idf0iUBhYNvZtTnMb3kAPen3S7g67L91WyzO6I
	4oCO9FoIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsv22-0003S6-R7; Wed, 31 Jul 2019 20:17:06 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsv1y-0003Rf-Fg
 for linux-nvme@lists.infradead.org; Wed, 31 Jul 2019 20:17:03 +0000
Received: by mail-oi1-f196.google.com with SMTP id w79so51791020oif.10
 for <linux-nvme@lists.infradead.org>; Wed, 31 Jul 2019 13:17:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=boB4r4MkAXPSYuYxCZxSFy5MUggqi6RL+k9IQhaeYoQ=;
 b=dbD8qJ5FDzLkCYnggoe3+lUwjqt+eZ4vF90dFg91pxKAAQDiltonL/CbRLlNnK1O0a
 tbBROEOugg3kWmMtxO5HFpkbBGF7Dcn9DmtdhylaZ6ScPjU7jSAbAQ3sKzUP/Uo47viT
 /Ldp1P3ygQRXoyeoOb65aizj1mNmmOKNYsjWQxpN/2PTQ8egRrtmakbKK0VLvuSVXsd+
 0saKGwVwMTdTeLFnhvwMyCyBQsJIAeubSxBfSgZO574MVBEd03epRDELS7So5UWGV5le
 PJZJLato1Vd68Kqd/G67J5POGTVFzqEpuzuVLHSS2x8GLpzwZdcnJyAjEDH50C/n7ViU
 i1gg==
X-Gm-Message-State: APjAAAU6WT4KI0eOpA2gtTUYw+Z5rwHYSHaLS+AtUskEX/m93gLhkp0b
 XpL9/Im/tqBmlC4kP5PqRdg=
X-Google-Smtp-Source: APXvYqxnoNMJV2b9MOSyeC28G78Vl18B6fPdWfxnx4vVwTQMwqmvT5zXZKuSMTsGotvgpiwFQlPFyQ==
X-Received: by 2002:aca:6185:: with SMTP id
 v127mr62974791oib.163.1564604221477; 
 Wed, 31 Jul 2019 13:17:01 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id 37sm22290394otv.27.2019.07.31.13.17.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 13:17:00 -0700 (PDT)
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
 <ef157a14-748b-08a1-b5e5-f5f9676988f7@grimberg.me>
 <82c624fc-257d-66a9-90e6-792900f58b29@suse.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <f9458a91-b3e6-55ce-e9dc-29f5bf6601d2@grimberg.me>
Date: Wed, 31 Jul 2019 13:16:56 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <82c624fc-257d-66a9-90e6-792900f58b29@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_131702_529047_A15C2856 
X-CRM114-Status: GOOD (  17.89  )
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


> Fully agree. But so far we don't seem to be there yet.

Right.

>>> But as all paths are dropped struct ns_head doesn't have any reference
>>> to any namespaces (and consequently, to any controller), and will be
>>> failing all I/O before itself being removed.
>>> It will be re-created after resetting completes and all namespaces are
>>> re-attached, for sure, but it still means that we're getting I/O errors
>>> where we really shouldn't.
>>
>> Paths should only be removed when the controller is going away, not when
>> it is temporarily disconnected.
> 
> I'm fully in line with that.
> However, it looks as if this isn't the case currently :-)
> And whenever I try to come up with a solution here I always come back to 
> the thought: It would've been easier if we just could flush scan_work ...
> 
> And my main worry here is: surely we'll manage to hash out the situation 
> eventually, and fixup all code paths to avoid dropping paths during reset.
> But the solution will be very fragile, as any innocent change there 
> might break things again. So I'm not convinced that asynchronous reset 
> and rescan is a feature which should be kept.
> (And honestly, we're working towards a solution where scanning during 
> reset will become a no-op ...)

But flushing the scan_work is even more fragile.. the scan_work is a
non-trivial work that may have dependencies with other processes.

For example, passthru commands with effects take the scan lock during
its lifetime, which means that it may be blocked even before it checks
the ctrl state (which is again, unreliable with respect to resets).
So do resets flush all outstanding passthru commands now?

So I think that flushing the scan_work might bring us new issues because
of this dependency. That is why I think we should address the root cause
which is we're wrongly removing the namespace, not the fact that we
failed to scan it.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
