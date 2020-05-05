Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DC701C637A
	for <lists+linux-nvme@lfdr.de>; Tue,  5 May 2020 23:54:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7dIaduUrejKsWkJeRtemc1XNe7t+Trlq9xYO3qVa7Q8=; b=hTuymt1zSKbYhSZAK5hy7T+V6
	PCNJouGOzqFtd9T0z/VDFUtJOYYdsm2nulrXGKSCvoWlWG3KBfy1JA+4mu5mPHn6C7d4QHDUq4DHi
	5u3p1q6HehZe8Rlgnd5XwTV8qVnG2b+1E7+B1yi6A2VVLtTQ0LnS+YUzUs2jq1jxRytwwxB7/7F1V
	KiRlL0DVd1sLOKJxP/SUkpWJpSEPA9CB8uGoa0TG05YT9Kf66s9xTv642KMZdyvnHMqexfo60UW6P
	wAsv1Qixyee91MmLjUDBdI9NDA1wD5jl0yUGxohPeVD6lt4paicLC8cQ1DVaF8bsfMNRfERw4xaML
	xWkb5JqgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW5Vd-0005wQ-E4; Tue, 05 May 2020 21:53:49 +0000
Received: from mail-pj1-f66.google.com ([209.85.216.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW5VY-0005vq-9r
 for linux-nvme@lists.infradead.org; Tue, 05 May 2020 21:53:45 +0000
Received: by mail-pj1-f66.google.com with SMTP id 7so1644709pjo.0
 for <linux-nvme@lists.infradead.org>; Tue, 05 May 2020 14:53:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=IsuiGAC9VV8j1Ygk78Mhqhb6TIdQ1+EA/LSLRrTLKWg=;
 b=XR5QhrB2Zz0ImsCRLi9qXLoIWQLbUelrSm6KfiHrXYEzS5dXTaYBc+hXTz5/Jh4i/Z
 cgbNVgpMPH1UeHuD2ZvYB7eU/1f4ZBmmt8gnJdi9W1TwN2QbZ7INz+PIZG6BGMH05AX6
 DDyQlMOTqNicxTYZJLu/hR3rNpfc8eGRCxknYWfyHMJ8cTCicG/x3mM/1aQ0PS6GpErP
 /vJdrBdV9BSN51zhhyaygC23Zv3u1wElX2cqATwLYh7xIkM/4qheEDLNpkMkvcWvo3Ld
 rwVGk8/vi1VCEV6zgFrCBA+zeFB1lQ3cFIhwodfJ/EtTem5VZrN7TwqD9CPI2IFR56jP
 ovsg==
X-Gm-Message-State: AGi0Pua2kxwrpSOwkh1o+c2jWUEdJPQuN97zfns2gYHkQwqxITfB2Kn9
 lwbGkJgGESrXo0m3xB2qQOEp0Qhj
X-Google-Smtp-Source: APiQypK1UC4m2mPNpDIdgMliGtpDI7Uyhw9BAwCxc1SWDBIrdRknBXJgCuCOruxbBgLQASraWVLoIQ==
X-Received: by 2002:a17:90a:a402:: with SMTP id
 y2mr5669147pjp.24.1588715623012; 
 Tue, 05 May 2020 14:53:43 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:d961:5538:b3d0:7e07?
 ([2601:647:4802:9070:d961:5538:b3d0:7e07])
 by smtp.gmail.com with ESMTPSA id 138sm901pfz.31.2020.05.05.14.53.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 May 2020 14:53:42 -0700 (PDT)
Subject: Re: [PATCH 1/2] nvme-tcp: set MSG_SENDPAGE_NOTLAST with MSG_MORE when
 we have more to send
To: Christoph Hellwig <hch@lst.de>
References: <20200505052002.14924-1-sagi@grimberg.me>
 <20200505060907.GA3995@lst.de>
 <f0f28e18-c432-8343-f7a7-79cb3159b43c@grimberg.me>
 <20200505102354.GB15038@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <6abf2183-ea1e-d1e0-360c-5d74b75c3690@grimberg.me>
Date: Tue, 5 May 2020 14:53:40 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200505102354.GB15038@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_145344_342573_15B66F43 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
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


>>>> We can signal the stack that this is not the last page coming and the
>>>> stack can build a larger tso segment, so go ahead and use it.
>>>
>>> Maybe you wan a little helper that returns the flags based on a last
>>> flag?  Something like:
>>>
>>> static int nvme_tcp_msg_flags(bool last_page)
>>> {
>>> 	if (last_page)
>>> 		return MSG_DONTWAIT | MSG_MORE | MSG_SENDPAGE_NOTLAST;
>>> 	return MSG_DONTWAIT | MSG_EOR;
>>> }
>>
>> You have it reversed, the flag here probably means more...
>>
>> Let me see if it is useful to have, will let you know...
>>
>>>
>>> or do we have a case where we don't want to set EOR?  At least the
>>> target seems to currently have such a case.
>>
>> As a design goal, we try to tell the stack explicitly if we have more
>> to send and if not we want to push it down to reduce latency. So
>> I think we need to have it in the target as well.
> 
> What I mean is that nvmet_try_send_data and nvmet_try_send_ddgst may set
> neither MS_MORE nor MSG_EOR.  Is that intentional?

nvmet_try_send_data should set MSG_EOR if it doesn't have more to send
and also nvmet_try_send_ddgst. So its not intentional.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
