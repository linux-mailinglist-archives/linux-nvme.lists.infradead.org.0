Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 306C87CEC3
	for <lists+linux-nvme@lfdr.de>; Wed, 31 Jul 2019 22:37:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=keiSmpxOZ+TLi6ZTn/3s5vyt1HHreDskr2rcz+hxIDw=; b=X9o6pQSm3NlmqqUrTd5TA2rBf
	JuGB+uHrDYtjzlpKtW6Usps00I4S7ch1jPUDbJCyMLi1qVvaDS3bZRjD/UlNveN85Ni+QKq/vU5Da
	p2hRAIUexKvaarAY6+zdceqe+G0K9AWY+EMJywh8NVgz1myBdObXOYM8zM2rNHoCLmEzOJc3SjlNf
	zz3qYUAFPUDSNapE64oHhbKMEmAxlt3lWI1OredUdHtvYdl33913XFl81YaX90hYIA29TCHQewWJQ
	m+uS2M74vx5p3By9LuShsXqAwfcWUZMcFs3cNtSCIRyUm97luMVi6lnw5pOyRUwwTXrxZrDzj9m+M
	IwO2tGrdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsvLw-0001Er-SS; Wed, 31 Jul 2019 20:37:40 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsvLq-0001Ah-1g
 for linux-nvme@lists.infradead.org; Wed, 31 Jul 2019 20:37:35 +0000
Received: by mail-ot1-f66.google.com with SMTP id q20so71539721otl.0
 for <linux-nvme@lists.infradead.org>; Wed, 31 Jul 2019 13:37:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9p/91zWmqmXczukRwckQfhTqWARVByCDEhmN4/s9nXA=;
 b=Xq9vQalZxyn69Bo6qupPkpp26sGDB+01qAvM7Hv7aDygBdSme2Q4wkDWcqcMCPlkHA
 0DW0aYCbnKTU+4GCD4xJpWD3lBKH3wfZVzgUqNs0+qtTTlFBRMDV+RQv7ggW9jlo+qGh
 ATSVf04oWuxnmUAmChBhwYyT6IPYikq8O4Xtfx2q/wKXsQ6sp0eRPfvogIBlqtuDKAGe
 1KnrJrrtWPWt4bOcab/2YxqjWiUNt/HjT5XHyqV4j2MzjHlHhAE3H+fAJv+tyuEfB/ew
 LYsUm6N82rdwnKmk7y6zxi7YQNlZhB4UCrMTaJ6CTWCkNz68vmUBgqABdrjlqvQEewPe
 hQLA==
X-Gm-Message-State: APjAAAWGqqSqlBoMK5rADDL2dHpKdn0m+TaNUHFMacxLQs/wTpxuDZhS
 D846o8/CUfj0DKc5Ld12vUKAE8Vi
X-Google-Smtp-Source: APXvYqw+UndiH+Hfa2fyWL0la1nd/YkxPJ/adZI7j5EtfpZaSamUFFzgjlwWYmW6rWfLcaHNUHp9lQ==
X-Received: by 2002:a05:6830:2148:: with SMTP id
 r8mr86988041otd.179.1564605453348; 
 Wed, 31 Jul 2019 13:37:33 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id i19sm23307641oib.12.2019.07.31.13.37.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 13:37:32 -0700 (PDT)
Subject: Re: [PATCH rfc 1/2] nvme: don't remove namespace if revalidate failed
 because of controller reset
To: Hannes Reinecke <hare@suse.de>, linux-nvme@lists.infradead.org
References: <20190729233201.27993-1-sagi@grimberg.me>
 <20190729233201.27993-2-sagi@grimberg.me>
 <993aee4e-9f9e-4af1-07e6-69218a12bc1b@suse.de>
 <886831d7-7035-7c38-7b1f-9945c222564e@grimberg.me>
 <695cad74-aaed-d1aa-9381-b4430cd27925@suse.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <b3731d28-fdb7-988a-7b3a-019e86f66f0c@grimberg.me>
Date: Wed, 31 Jul 2019 13:37:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <695cad74-aaed-d1aa-9381-b4430cd27925@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_133734_100448_87933409 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> Exactly because of the race that you are indicating. We can't reliably
>> know if the controller is resetting (or will be starting a reset soon)
>> so we go ahead with the revalidate knowing that if the controller is
>> resetting it will fail. That is why the state check is after (this tells
>> us if the revalidation failed because of a reset or something else).
> 
> Okay, fair enough.
> 
> Reviewed-by: Hannes Reinecke <hare@suse.com>

Hannes,

Can we understand if this addresses the issues you have reported?

 From the cover-letter:
Hey Hannes,

Here is two patches that to my understanding of the issues you describe
in your patchset: "nvme: flush rescan worker before resetting" and your
report of "spurious I/O errors during failover".

[...]

Can you please apply the following two patches and report if
they address the issues you are seeing? And if not, can you please
report a call trace of the hanged threads?

And, given that your are in a multipath environment, can you apply
these on top of: "nvme: fix controller removal race with scan work"?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
