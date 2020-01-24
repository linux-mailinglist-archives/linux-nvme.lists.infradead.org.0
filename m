Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44987148DDA
	for <lists+linux-nvme@lfdr.de>; Fri, 24 Jan 2020 19:35:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xfy4/LAlKvHEvki7xuakQNZYrb62JuW41ixtKtvR2rU=; b=ZBx4RbLMh5wzIiIqWnXNMaSKB
	o88SYtuLaNZwXGp44aGCjefGv3MmXrw7n+jFTqooOP+4l5uwedJpkhIaIUuEV2hE7UlzuLEjPmHUA
	EzP58KorPjsWVbhw0CnQofZMocLsPuVxHc2t3qDUnMLjEMI/yOKDOyEMhsoZXEzWV45Mhlrz8Il1d
	b5+xm5il3Nk6lm8uhGWOjPqe7peStCz8kwt1mfFvRLZ96TBtWPa3G7GE59x0D6zWc86fs0RzEuSMk
	bk5hGONNIxSH3JySj3lbudFOF6xl2+t2vfgasXAQxhc24b7bl3KCokrQ4o530JQCvArOlKcsdtvrU
	9SWZoePDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv3nq-0007RU-5v; Fri, 24 Jan 2020 18:35:34 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv3nl-0007R6-4R
 for linux-nvme@lists.infradead.org; Fri, 24 Jan 2020 18:35:30 +0000
Received: by mail-ot1-f67.google.com with SMTP id d3so2257214otp.4
 for <linux-nvme@lists.infradead.org>; Fri, 24 Jan 2020 10:35:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=IV7U+XNGCUQS/xaWqr6409TNnE3ME3uwwYDb4h8S4us=;
 b=OrhbL8GW2DrteCN7OwLJ/rWmBdeGGAb2+HQv7Z7yw3mfsdW7yqqlMD9gbfB9aEwKKd
 p91abr9dAJ4SxcwlcPqNifxELPpuTX7k+SipRd5CXfYgAhauGFgLmc3qsjDV7kvAlLQn
 FSC7xBqNI0G1mb30O10swCghlEpJxuQmexWF2JLCYpsnREhi8sdjcQ/X0t8SSkdzGFIq
 dJEjMYVQnecUIl+R371yy8XQFvOm1UfdYaV7VwU1hc/nB+l9WK9ppsQMvWpXtJ51nCq5
 md6PmD6MMl7b2RDrSQuOWzS++WzOJwz3Kf1VcD8HAw0dJ4WFME4/R9jct1bSgF0w8j/w
 z3/A==
X-Gm-Message-State: APjAAAVKo3/QDBc2MdlJNbVBk8tJFLSLR3+qHh/LBATXcfoDrbjTwcZ8
 akUEZHUZJFyICNnam4sU7MU=
X-Google-Smtp-Source: APXvYqx7RVxpowr7iIu5UwYxYhW9j6Wbt5kHsczfOGHIj0NwSkszcwfI+jabCMI3X9xCfFwjP3nmEg==
X-Received: by 2002:a9d:6251:: with SMTP id i17mr3862827otk.14.1579890928128; 
 Fri, 24 Jan 2020 10:35:28 -0800 (PST)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id o101sm2230222ota.69.2020.01.24.10.35.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 Jan 2020 10:35:27 -0800 (PST)
Subject: Re: [PATCH] nvmet: fix dsm failure when payload does not match sgl
 descriptor
To: Keith Busch <kbusch@kernel.org>
References: <20200124173942.2744-1-sagi@grimberg.me>
 <20200124182855.GA19243@redsun51.ssa.fujisawa.hgst.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <bf79cb37-41c1-b604-3e3a-64fbe51ee105@grimberg.me>
Date: Fri, 24 Jan 2020 10:35:18 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200124182855.GA19243@redsun51.ssa.fujisawa.hgst.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_103529_175446_1F83FFFA 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
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
Cc: Dakshaja Uppalapati <dakshaja@chelsio.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> The host is allowed to pass the controller an sgl describing a buffer
>> that is larger than the dsm payload itself, allow it when executing
>> dsm.
>>
>> Reported-by: Dakshaja Uppalapati <dakshaja@chelsio.com>
>> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> 
> Thanks, applied for 5.6.

Thanks Keith, this needs to be also in 5.5 as there the regression
was introduced, maybe add a tag on the commit?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
