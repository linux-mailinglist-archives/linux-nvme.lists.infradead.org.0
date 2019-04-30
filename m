Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA84F165
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 09:35:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jWi5T/LiEtsmZZbgz+VhPBP94J50VAC3YMYns0QH/5o=; b=AJgwH2DangfFI6aTpyc0cqdMH
	4uTo3koECVfoLRhzbg66XXRHG4bEH2vG4ag7xR6P7pnDpXR3s1BTXwwq3vwCCUVDvY6FF4WjcNh2w
	kLFs30dCnqoNQQ58LREyj+Ah9DBtE+ZxgzR4+F47ZMfapZRySFb4NQW0rfz4+16kOKgTO2TQIexBC
	1olvbe0TvzGvXSV8g/nnjjg/OrEXEbjgoRCRq+kXHlW46WrAGN+L4VBEtxJt0mpaOhv57XzQzHdTJ
	23eXNIZO5gUh/Yd8nZt2rBvOpuJuDsGtTKeQ4a6G1x4oyZd+WNq4S9fDJgytSjHxVmZ/VQ3XGLiJH
	I06GouW2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLNI6-0007Mh-Gi; Tue, 30 Apr 2019 07:35:02 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLNI0-0007LY-Gw
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 07:34:57 +0000
Received: by mail-wr1-f67.google.com with SMTP id s18so19827017wrp.0
 for <linux-nvme@lists.infradead.org>; Tue, 30 Apr 2019 00:34:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=a4RP70XSMKfJlTd7mO+M09bqEAxCHoUhZVN4nQHhVe4=;
 b=ozswdYiphhGfNbdMCkC+JjHxxyTCUigaeBmlcHEOl4y0GxIBT5bsb3mPORdhCaoGls
 vvFQeF4FeLaTR1xYbnOpQ3EtHxPdr10SYat/BINuKbcIp5B72bagEbfWCfD/PAvybAh8
 RyjjTWRFOUSA0YodPear+kO9JWXBjFpJ9Ho0DNAyR8fZ3ts5vGzk9yrSeqMpLpt2HTP2
 dKmFsP04u0MlvZk9m0wBIyZnaK1T3Ze4Kg0NaXuQE+OMobwJKIYPeqeCMMKENtwTdlX0
 Cg6R+bH6nP4rXGDwwyIlrSnhna5Ta6X1GfeUtb+h99p9YWttuJBBLMNdtDY3DAIAH8Lg
 xxJg==
X-Gm-Message-State: APjAAAXRI1Jph09sudgLT5ssrjW+tJ59sAz/u4gWL0dXthmK0VX8wvBL
 2IOi2YIksFyjEyybYUnVkjc=
X-Google-Smtp-Source: APXvYqwmXGQfEY8f+rlWjoS4RttvHre7w5Muh0BNBArtBwYSYdo55F85azJM7PZiOfHSwQJnX7MwHw==
X-Received: by 2002:a05:6000:11ce:: with SMTP id
 i14mr15625037wrx.37.1556609693905; 
 Tue, 30 Apr 2019 00:34:53 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:2546:74c6:68ba:516?
 ([2601:647:4800:973f:2546:74c6:68ba:516])
 by smtp.gmail.com with ESMTPSA id m4sm7361634wrb.15.2019.04.30.00.34.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Apr 2019 00:34:53 -0700 (PDT)
Subject: Re: [PATCH nvme-cli rfc] fabrics: support default connect/discover
 args
To: Hannes Reinecke <hare@suse.de>, linux-nvme@lists.infradead.org
References: <20190429225338.6866-1-sagi@grimberg.me>
 <493df3a7-6d25-9fd1-57ff-addbf37fcf22@suse.de>
 <785558d1-519d-78c1-0a1b-7517f771c1e2@grimberg.me>
 <b4f9b6e4-f0b4-312f-1eeb-4c292a8f9af1@suse.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <e060385b-7695-d5b1-d4ca-2357e016219d@grimberg.me>
Date: Tue, 30 Apr 2019 00:34:50 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <b4f9b6e4-f0b4-312f-1eeb-4c292a8f9af1@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_003456_560707_EFC37174 
X-CRM114-Status: GOOD (  19.20  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Keith Busch <keith.busch@intel.com>,
 Johannes Thumshirn <jthumshirn@suse.de>, Christoph Hellwig <hch@lst.de>,
 James Smart <james.smart@broadcom.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> Effectively yes, but defargs does not allow transport,traddr,trsvcid,nqn
>> parameters (which don't make sense), and discovery.conf is designed to
>> hold exactly those. So in practice they should not overlap.
>>
> Uh-oh. I _do_ know of cases where discovery.conf is used for precisely 
> this purpose, ie holding _all_ arguments.

That's fine.. it was never designed for this purpose though...

> And in the absense of any other way existing implementations will be 
> using a very similar thing.

Again, this would work.

>> Also, we only go to discovery.conf if we did not get a transport+traddr
>> (which are mandatory). So its not exactly the order you mentioned, more
>> like:
>>
>> defargs.conf
>> <cmdline>
>> if transport+traddr not given
>> discovery.conf
>>
> How very curious ...
> I would have expected that any command-line args would overwrite any 
> arguments given in the configuration files.
> But given that discovery.conf can contain several lines I can see the 
> problem.

Exactly. discovery.conf was simply added such that you can run nvme
connect-all without explicitly passing parameters so you can build
auto-connect scripts on top of.

> However, to clean things up we should be updating the parser to ignore 
> or even call an error if we find a line in discovery.conf which does not 
> specify transport+traddr.
> Just to avoid confusion.

It will fail, the command will fail for lacking a mandatory parameter.

>>> And shouldn't we document that somewhere?
>> Where would be the place to update this?
> manpage?

Well discovery.conf is quite a generic name...
also don't you think a full blown man page is an overkill?

both files have some documentation in them, we could enhance those
a bit...

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
