Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EADE1C4E7C
	for <lists+linux-nvme@lfdr.de>; Tue,  5 May 2020 08:51:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PsqAS5j+OWupaGjugSTjE163yTJ2C8TQA9+a6LYFQPo=; b=J0SDZejrNOqSHIPKMnDg0LbED
	lzL7kM335trJscIQF3CSbCH89bXxPTxg7JqXQznl37mKq3s35DjiAZ0O5eTlI4ZmEiqdd3/1VTTt/
	Gmu7l2897w9CdWqgNCqIJUfd4IaOo66zt/NoIBYfbzBzlhkwcgFVE47CACj83zkVRb0N4YicdTF8T
	cYKrukwKYM68Qg2FYx3KTth5W/bE1AI57tP/uIRMwGC4D7jAzsUJcEGiye/9VtjX+oFXjctk5DyOX
	1lT4baz2VB2gG36J+TKBiqCOJhxewUWm357AHF6JR42uvJbcN2N2R6AqN9MEny14SJtZbBe1hEl9B
	uzYi6adQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVrQ0-0008Mh-0z; Tue, 05 May 2020 06:51:04 +0000
Received: from mail-pj1-f65.google.com ([209.85.216.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVrPw-0008M4-R9
 for linux-nvme@lists.infradead.org; Tue, 05 May 2020 06:51:02 +0000
Received: by mail-pj1-f65.google.com with SMTP id hi11so608022pjb.3
 for <linux-nvme@lists.infradead.org>; Mon, 04 May 2020 23:51:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=1kJkn2BhZJKPUjMNV4rYTBssOneAQVZSdDe0ewTjpks=;
 b=OlHZeNFrUSQ5Cma0TfJlxG+/js7qkK13zQhqeEuoki3C/lgtRmFjZKRvaxM0+XL7sE
 E1Q3jz/WzUMki+e4EVeNjtJuXfW4Yd1FFA+xXj7Feq5oDRlErx0F5XzoJQLSzlJk4Gm3
 nrRU3STjIY2UaYr0owAbpxEndxmjzgaE4chiyWImXpv3Lw833GZKk2W9FnMt7rZalWo4
 3lwnnoLyr6DMdTfkNDHw2ClCdm7httEe3vLfsUF15gINGfpffbsqo6b82WSHe/Z/I/gl
 QwBfVrMnVYD/aF4ZiPyBuQ6coTQRxl680t7BpFcqMjUXK0XaTaCNYdU0GgoSglztTkWv
 SKnA==
X-Gm-Message-State: AGi0PuYadDe6hhhFstpvfKJSBmAwP/esmE1bs37xajUy8AN39gVJhfU/
 eL0A8ZySurgRR2hoG9hZI6+FbksU
X-Google-Smtp-Source: APiQypIdQzwb8Fpx529zOuBEAPkV1BNUUuPGwspthThpYWAJLNNjsmQggwavl3SgU2rdvyA0FIt8cA==
X-Received: by 2002:a17:902:aa4b:: with SMTP id
 c11mr681560plr.211.1588661459437; 
 Mon, 04 May 2020 23:50:59 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:b8cc:5255:a224:4d8b?
 ([2601:647:4802:9070:b8cc:5255:a224:4d8b])
 by smtp.gmail.com with ESMTPSA id y2sm1033896pfq.16.2020.05.04.23.50.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 May 2020 23:50:58 -0700 (PDT)
Subject: Re: [PATCH 1/2] nvme-tcp: set MSG_SENDPAGE_NOTLAST with MSG_MORE when
 we have more to send
To: Christoph Hellwig <hch@lst.de>
References: <20200505052002.14924-1-sagi@grimberg.me>
 <20200505060907.GA3995@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <f0f28e18-c432-8343-f7a7-79cb3159b43c@grimberg.me>
Date: Mon, 4 May 2020 23:50:57 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200505060907.GA3995@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_235100_876915_444CD46C 
X-CRM114-Status: GOOD (  15.78  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.65 listed in wl.mailspike.net]
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
Cc: Keith Busch <kbusch@kernel.org>,
 Mark Wunderlich <mark.wunderlich@intel.com>,
 Anil Vasudevan <anil.vasudevan@intel.com>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> We can signal the stack that this is not the last page coming and the
>> stack can build a larger tso segment, so go ahead and use it.
> 
> Maybe you wan a little helper that returns the flags based on a last
> flag?  Something like:
> 
> static int nvme_tcp_msg_flags(bool last_page)
> {
> 	if (last_page)
> 		return MSG_DONTWAIT | MSG_MORE | MSG_SENDPAGE_NOTLAST;
> 	return MSG_DONTWAIT | MSG_EOR;
> }

You have it reversed, the flag here probably means more...

Let me see if it is useful to have, will let you know...

> 
> or do we have a case where we don't want to set EOR?  At least the
> target seems to currently have such a case.

As a design goal, we try to tell the stack explicitly if we have more
to send and if not we want to push it down to reduce latency. So
I think we need to have it in the target as well.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
