Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5594761CA3
	for <lists+linux-nvme@lfdr.de>; Mon,  8 Jul 2019 11:57:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vkdfU9GB0ytf7iQ1MytoPqK+0EhZmmv5Enx9RT2hhfs=; b=j9UrVIrdL4FR8DfwiAsQYxIS5
	NYNy46JYw3qoJqUrevHngnx8ob/y9d1p4cZ+ki/q8z9woyYC9fA1zfC7xdJI1f/7g+MSV6QIYRjwd
	vUSY31YBS8dO49cqyVLrxIsRL6UGx/MYEmbQNcorlOu9Cn5IjOW865CoPiV6+2HQyg/IBtKJ8wG+M
	NSOaOXTNrTEav9EIEHqf0BumAErFsZc6X+9+vooMxyCYsOyPmC4p+k6MmFKYM91pQQKWRfSR0bT7m
	5GIFm8T3/frECtFZkRTKIi5+ezH6xZP3uB4OnJ7KOmplSYUUFB+p/fBRIL1uc93fvefee7HSq4VKb
	VwKDtejsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkQOr-0008IZ-I1; Mon, 08 Jul 2019 09:57:33 +0000
Received: from mail-pf1-f194.google.com ([209.85.210.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkQOg-0008I5-QF
 for linux-nvme@lists.infradead.org; Mon, 08 Jul 2019 09:57:24 +0000
Received: by mail-pf1-f194.google.com with SMTP id j2so7338983pfe.6
 for <linux-nvme@lists.infradead.org>; Mon, 08 Jul 2019 02:57:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=BQqucydnyo6gsJAnTM79TgwVMNI1jxe49D0vmK0Hw8Y=;
 b=mOi7AYZkr2kgoT7jTpQD9VvZ20/VyvOHN6UC9St7g5+5qWwvQEmf/fTZzFjFfv2EF+
 M6WodaHlvzkL0qhf9jMb4o5d+FvUVAqe0VU+9i3Hpk7bi+mUNRQ4dpv2/pJlRKsylg44
 tOkcW/Uf5+2tE7ZuOkpxQoWlrxS7a7tt3ByaXBcftBOn77JvDSXbXWuaialuvwgf8Vzu
 4OLDjBViIDJWNBBLxOQB3VDNLbc08oxGgou2pgsTeymDGRQ/61QlLEgA09u18NK+XSO9
 ygI9gzgc53yJ/onMwT5Jb3Yf43ZBB45YmmAbfiVA6tC/YXfuazMRuDXwL1+u7Q81x4+/
 3mug==
X-Gm-Message-State: APjAAAXYclj0cWE5KIfES9xw9jVWrp/YY6sml4NyIrOB918psDeJeJ/T
 R+iwPrhL96MIqhdGznWuuHI=
X-Google-Smtp-Source: APXvYqybivzzNRKS80KysUMUw5fKUex80+si92XjUAr4ADbz5XcB78hfqDe0aCDsgczrn8IrNlXllg==
X-Received: by 2002:a63:360d:: with SMTP id d13mr22466056pga.80.1562579841751; 
 Mon, 08 Jul 2019 02:57:21 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:7538:126a:4b71:8c7c?
 ([2601:647:4800:973f:7538:126a:4b71:8c7c])
 by smtp.gmail.com with ESMTPSA id h16sm17087715pfo.34.2019.07.08.02.57.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 08 Jul 2019 02:57:21 -0700 (PDT)
Subject: Re: [PATCH 3/3] nvme-tcp: replace sendpage calls with sendmsg calls
 for SLAB chunks
To: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>,
 linux-nvme@lists.infradead.org
References: <cover.1562234605.git.mskorzhinskiy@solarflare.com>
 <cdce4bc7cedc11a80c01e457a4b18933b73017e2.1562234605.git.mskorzhinskiy@solarflare.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <28d0887b-692e-0b33-7530-673006340431@grimberg.me>
Date: Mon, 8 Jul 2019 02:57:19 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <cdce4bc7cedc11a80c01e457a4b18933b73017e2.1562234605.git.mskorzhinskiy@solarflare.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_025722_861606_542BB498 
X-CRM114-Status: GOOD (  16.74  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> According to commit a10674bf2406 ("tcp: detecting the misuse of .sendpage
> for Slab objects") and previous discussion[1][2], tcp_sendpage should not
> be used for pages that is managed by SLAB, as SLAB is not taking page
> reference counters into consideration.
> 
> This change prevents sendpage calls for payload sending too, although this
> is true only for admin commands, so actual data transfer performance
> should be untouched.
> 
> [1] https://www.spinics.net/lists/netdev/msg553616.html
> [2] https://www.spinics.net/lists/netdev/msg553285.html

Well, the lifetime here is guaranteed to be the same for the buffers
in question.

Was any issue seen in action?

> @@ -860,7 +878,7 @@ static int nvme_tcp_try_send_data(struct nvme_tcp_request *req)
>   		else
>   			flags |= MSG_MORE;
>   
> -		ret = kernel_sendpage(queue->sock, page, offset, len, flags);
> +		ret = nvme_tcp_sendpage(req, page, offset, len, flags);

Please just do this instead:
--
	/* can't zcopy slab pages */
	if (unlikely(PageSlab(page))
		sock_no_sendpage()
	else
		kernel_sendpage()
--

> +static inline int nvme_tcp_try_send_pdu(struct nvme_tcp_request *req,
> +					int len, int flags)
> +{
> +	struct nvme_tcp_queue *queue = req->queue;
> +	struct msghdr msg = { .msg_flags = flags };
> +	struct kvec iov = {
> +			   .iov_base = req->pdu + req->offset,
> +			   .iov_len = len,
> +	};
> +
> +	return kernel_sendmsg(queue->sock, &msg, &iov, 1, iov.iov_len);
> +}
> +
>   static int nvme_tcp_try_send_cmd_pdu(struct nvme_tcp_request *req)
>   {
>   	struct nvme_tcp_queue *queue = req->queue;
> @@ -898,8 +929,7 @@ static int nvme_tcp_try_send_cmd_pdu(struct nvme_tcp_request *req)
>   	if (queue->hdr_digest && !req->offset)
>   		nvme_tcp_hdgst(queue->snd_hash, pdu, sizeof(*pdu));
>   
> -	ret = kernel_sendpage(queue->sock, virt_to_page(pdu),
> -			offset_in_page(pdu) + req->offset, len,  flags);
> +	ret = nvme_tcp_try_send_pdu(req, len, flags);

This is unneeded given that pdus are page fragments, NOT slab pages.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
