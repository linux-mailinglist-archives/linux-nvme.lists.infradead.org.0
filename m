Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB391CB267
	for <lists+linux-nvme@lfdr.de>; Fri,  8 May 2020 17:00:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7ykBo/fHKeLdhcYbhF9IxYszVnTn1EJpaq5z9aXS6JQ=; b=p1s/0cf4MkKIOPSTvwARkL0c5
	4kLJn9Do34o0VedeAlhfmAJQNv71c8/i6JnYbbiZDTvqydq4M49EcWPUd1xKzDyy4hSKNc7u0aWf3
	NAXPA0Xt7OPRqPBAkO+Jm0gh+syU4rJ5zV1ioaMHQhV3A1qH0sA6pS4oQ1qTSZPWlx0c5umEUzTpg
	ooYBDzEFrF3LaTZrHE5y95Z+67radbKyj1uuSmevkFnznvI4G0o5c0k/URJ4DrbrnAe05oxUjS5k3
	yUMP1IkCMxCmCdM4e3f1OWyGZPbnh51nz8jOPxTpDGYp7Van4yKFI2r8mDnRmM8/7wH4uALENVw8H
	ggs1AuRPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX4UF-0005BU-5I; Fri, 08 May 2020 15:00:27 +0000
Received: from mail-pj1-f68.google.com ([209.85.216.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX4U7-00050C-80
 for linux-nvme@lists.infradead.org; Fri, 08 May 2020 15:00:20 +0000
Received: by mail-pj1-f68.google.com with SMTP id hi11so4368745pjb.3
 for <linux-nvme@lists.infradead.org>; Fri, 08 May 2020 08:00:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Dz6VDMJyuK1XyYzHok3ECv+IhtOi6HIeZ8ha28uAo00=;
 b=FZVOQpF0+cE8eNRd1QVNZeyGR8ACQ9fp0FW6mvkDBFaSj34LLLi3f4MmtEnAE1vHzP
 5OZ6AagAUXAigIOgIGtaZNctSqwsaekOSHv5BkQH3n3R3wyFpFtauB+Dn3El/hK47wXb
 zqXPNJ1vEMfv8UoxDvUop4LXxlktB/hJRpZC77bS8ttsIW6iKgcb7/R44kPDmpWjwtgH
 FMkRpTN2NBlxFwtiZaK5kvUuCxYFZkTIvjSMlF+KnXAe8am4ThhXHDqXnpPSYqJiRqZ9
 YX9+z02Qk/sqgE+vwoiTJq12jYpGLrzZDL790EtPsrhSb9QfELcrMdZ0m740/0q9uAzH
 jHzg==
X-Gm-Message-State: AGi0PubX7Nl+Z5D3Fniwb4/SMO8NkIXXEYHTWaOjmTdqhRnnmdB1CZQj
 iWOKjuxPTAlKluKkg7wlFf4dl6KL
X-Google-Smtp-Source: APiQypIsjzeuX4fw+Z+JnAa383ZiJh9weevQUvRB/oH+/E47GSLRJRBPmcX6gDisdsh7V4L10BiZZA==
X-Received: by 2002:a17:90a:35f0:: with SMTP id
 r103mr5904560pjb.167.1588950015814; 
 Fri, 08 May 2020 08:00:15 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:bc73:49fb:3114:443?
 ([2601:647:4802:9070:bc73:49fb:3114:443])
 by smtp.gmail.com with ESMTPSA id h64sm2165475pfe.42.2020.05.08.08.00.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 08 May 2020 08:00:15 -0700 (PDT)
Subject: Re: [PATCH 0/3] Add nvme-tcp hpda support
To: Yoray Zack <yorayz@mellanox.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
References: <1588860124-40089-1-git-send-email-yorayz@mellanox.com>
 <0cffbf28-0e40-e1f1-219d-330c0fe43ffc@grimberg.me>
 <AM0PR05MB579359570CF4A3F5207AB093A3A20@AM0PR05MB5793.eurprd05.prod.outlook.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <17eb4c83-ca8e-46f7-21ee-06b19595a2c8@grimberg.me>
Date: Fri, 8 May 2020 08:00:13 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <AM0PR05MB579359570CF4A3F5207AB093A3A20@AM0PR05MB5793.eurprd05.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_080019_312519_69DDB148 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Boris Pismenny <borisp@mellanox.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>> Given the padding defined by user-space, the host driver will send the
>>> requested hpda to the target which will support that on nvme/tcp c2h
>>> capsules. The host will parse the capsules according to the padding.
>>>
>>> The request hpda is 0's based value in units of dwords in the range 0
>>> to 31 (e.g., values 0, 1, and 2 correspond to 4 byte, 8 byte, and 12 byte
>> alignment)).
>>
>> Thanks Yoray for the contribution!
>>
>> Can you share a bit on the use case you are adding this for? Curious to learn
>> about it.
> 
> Hi Sagi,
> 
> I am adding these changes because :
> 
> A.   This is part of the nvme over tcp spec

There are several stuff that are part of the veriaty of the nvme specs
which we implement, we usually want a reason to add it. Not against it,
but would like additions to come from a real need.

> B.    We testing future hardware that needs to know how to handle it

OK, but is it required by the device?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
