Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42ADE462CD
	for <lists+linux-nvme@lfdr.de>; Fri, 14 Jun 2019 17:31:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Xf93PnBD5ENCczD+AztEkQhXWIar5CmDxakPI3B/NNk=; b=eWjVfGfEBff0rObuAQiyiFSSR
	XDSr4vjkML/cGsU38g1mnGG2E+zkEZJ+G5sDEle1rAHMapRj9MhD/Z++KiR63Zk+9vpY9yEhnbdcB
	yNRjVepbLf4z8q78H+Gnk23X0cqCl0Lv18yUI5bTooVqr4ZVQ/ebV5ZlxoRdHTqH34rWERDQir5gW
	hJAVNfZ9S/8zRG/n1QS/pcO9OfbEaXg2+2UUafSPkcXoYNTg8qUS9D/3greX23d6r/ikiWNpORn9v
	LM3mN3rjQ+9kBgStp0lVWiJwM81XrD9+tuecaHUuGAy7PBc0VXijkP1Tv+dMS6ewYmW11yrypvLRo
	7ibWznQ8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hboAx-0000Xh-3W; Fri, 14 Jun 2019 15:31:35 +0000
Received: from mail-pl1-f196.google.com ([209.85.214.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hboAq-0000X2-7S
 for linux-nvme@lists.infradead.org; Fri, 14 Jun 2019 15:31:29 +0000
Received: by mail-pl1-f196.google.com with SMTP id i2so1180400plt.1
 for <linux-nvme@lists.infradead.org>; Fri, 14 Jun 2019 08:31:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=fI6V7lWVdPilylf9kz676PdzPp9YbhkiZznBu1vIiK8=;
 b=ez6TuVj8K2Yf9YeC8SprDYl0NAGdq5uos7NTae8GiV45xKNlkFOuILfui7qKDUPFgJ
 u9L1yra3Uv0e8xYlubbm/LPrNTR9z8TSQM7HVkal6yPJND2PoYk1znFYQ1kMiBlM/ivs
 3/FRo1vt/dd0y7VuR+Kqy67qy1k6OUtEoIwUnJenYR4HVQUEU77s+fnDMUkVDEU+4Ii5
 vuVR4pEVbcpLpXHGuBnuVrhQ9lGtHdnQOHjU/BeJQd9nx5dzOQbVwbiHQoQvs5RodACJ
 0pbEuZXxjBEo1Q9HFFvfc3Jwn+k06V3cLnPuNBFkGiMJ3bRdsojfFBeT+JTLHkHh14bW
 WGkw==
X-Gm-Message-State: APjAAAXz5HdE6VpU9hnMg4RwpCKzbvXEqwrM91ZWqMMvc66JFPJ/J211
 tanxe95ZZc2D/UcixkIzsZg=
X-Google-Smtp-Source: APXvYqxbouiGdsm057OUZNFbOBXA8pr2ycRPU9VPrxIKohxkwNtvr21c1JpNZJcYp/UOwpGyjZFFUg==
X-Received: by 2002:a17:902:7894:: with SMTP id
 q20mr84444592pll.339.1560526287079; 
 Fri, 14 Jun 2019 08:31:27 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id y22sm2983149pfm.70.2019.06.14.08.31.25
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Jun 2019 08:31:26 -0700 (PDT)
Subject: Re: [PATCH v2 2/3] nvmet: Export NVMe namespace attributes
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Christoph Hellwig <hch@lst.de>
References: <20190610210612.103952-1-bvanassche@acm.org>
 <20190610210612.103952-3-bvanassche@acm.org>
 <BYAPR04MB5749D68053F5CAF2456E17FC86EE0@BYAPR04MB5749.namprd04.prod.outlook.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <4a104091-5ef2-ee3b-9653-cbb816b39a2e@acm.org>
Date: Fri, 14 Jun 2019 08:31:24 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <BYAPR04MB5749D68053F5CAF2456E17FC86EE0@BYAPR04MB5749.namprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_083128_270658_844D473B 
X-CRM114-Status: GOOD (  21.65  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.196 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>, Keith Busch <kbusch@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 6/13/19 9:42 PM, Chaitanya Kulkarni wrote:
> On 6/10/19 2:06 PM, Bart Van Assche wrote:
>> +/* Convert a 32-bit number to a 16-bit 0's based number */
>
> Since following function is only helper (and even though it is not in a
> fast patch can we make it inline ?

Do you mean declaring that function as inline or inlining the function? 
The usual approach for small helper functions in .c files is to not 
declare these inline and to let the compiler decide whether or not to 
inline these functions. I don't want to inline that function manually 
because that would reduce readability.

>> +static __le16 to0based(uint32_t a)
>
> The code in io-cmd-bdev.c uses u16, in the above line we are using
> uint32_t. Which one we should follow ? I think either way we should be
> consistent.

Are you sure the purpose of both functions is the same? Changing the 
argument type of this function from uint32_t into uint16_t or u16 is 
wrong. That would cause any argument larger than or equal to 1 << 16 to 
be truncated.

>> +	id->nsfeat |= 1 << 1;
>> +	id->nawun = ppl0b;
>> +	id->nawupf = ppl0b;
>> +	id->nacwu = ppl0b;
>
> The above 4 assignments are similar to the assignments present in the
> nvmet_file_set_limits() ? If so is it make sense to have a helper to
> reduce the code duplication ?

I don't think that that is a good idea.

>> +void nvmet_file_set_limits(struct file *file, struct nvme_id_ns *id)
>> +{
>> +	/* Physical blocks per logical block, 0's based. */
>> +	const __le16 ppl0b = cpu_to_le16(0);
>> +
>> +	/*
>> +	 * For NVMe 1.2 and later, bit 1 indicates that the fields NAWUN,
>> +	 * NAWUPF, and NACWU are defined for this namespace and should be
>> +	 * used by the host for this namespace instead of the AWUN, AWUPF,
>> +	 * and ACWU fields in the Identify Controller data structure.
>> +	 */
>> +	id->nsfeat |= 1 << 1;
>> +	id->nawun = ppl0b;
>> +	id->nawupf = ppl0b;
>> +	id->nacwu = ppl0b;
> 
> The above 3 assignments are where we are assigning value = 0, which will
> be the case any way since caller of this function is using kzalloc() to
> allocate nvme_id_ns *id(), isn't it ?

That change would reduce readability of the code.

The reason I wrote the code this way is because I was hoping that a 
filesystem expert would have a look at this code and tell me whether or 
not the physical block size is available in e.g. the superblock.

Bart.


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
