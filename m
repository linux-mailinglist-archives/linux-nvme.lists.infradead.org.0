Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 935FB1A4300
	for <lists+linux-nvme@lfdr.de>; Fri, 10 Apr 2020 09:31:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JHYoe4V6Dc+BjrnxSj7qKMTJM16cdvzY2gQwDWMY1kE=; b=GLjQlSu0KrRySF9vRDnp9bLYW
	8E3xYtMeJ08pXu3fxHbSY1IG9SuONDxRyFlrgInheLC3mMrx6LINHyqW+zNeZuPwu/RuRtlkKW1MA
	ZKLwMvBkYDEIeGx1EMe2xuAa2Odw5QmJL8xnkj0Lsc+/j6UQQ1G2s4w6QtfKJTPdMwAhDERYrjFsY
	VL1OHgv3QugoO6yuqjJHhZrsgI7v+IidhSK8tz6pBEEn0T/zg9wjBnSmTHj8v5ImFfKusWBvjwJoW
	L2ytmmz6WI9BCQMD01rk30jsh4KzHVdHefZ7zF6v2fO+UtjCuixQGjpVJVAnJoE200JvWuuevUJ1Z
	L/byeJ5qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMo8C-0005Ii-GF; Fri, 10 Apr 2020 07:31:16 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMo88-0005IP-1U
 for linux-nvme@lists.infradead.org; Fri, 10 Apr 2020 07:31:13 +0000
Received: by mail-wr1-f67.google.com with SMTP id u13so855985wrp.3
 for <linux-nvme@lists.infradead.org>; Fri, 10 Apr 2020 00:31:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=0Uv8v+1L/JTESYzbSzIvvylDRAY8dn7k/E3LT4L81JY=;
 b=Rs8rrora21badEk7Rn4aZ/88sLalExTLbvKaRCG/tHPuBq9N+q7l584CoSbHub1reZ
 slMxhjDS1SZAL2BQKBb0pFuOlu43uFsMQ8qbQ2uhreCgr8J6Po1q0XoX+JqFrCvqZfw1
 mhG0/vzV2ApTW4SBqDKwsL7sipoA1MEOTRXVLeWuLi0UR5rnk7NwnilNtOaz0A2kjCuQ
 1oklk1kTVWTu6fu/sFC51/5jq6WEWLwt3t3WELkfwT6hGBLbNWJPAgtr9aM5NomAOTWs
 qlKPldkEHHnpc2P5e40gOPfqCULUYG28M+juf0uUeqf8C1un9AQxPe7eYLB4PMj4ugqV
 HoLw==
X-Gm-Message-State: AGi0PuarFIkLZfw2uYhOo7xV6qMw7gxBQ0/ImsBI/DroHX8d7dbKOcyp
 XASf6CaubHJDHxi73v1iaSEQXZOj
X-Google-Smtp-Source: APiQypIA8N70pg//94mcJvWY/aOkjVmTgUyR/2EhECiuohzp8oMEdwohIvFjwNfYRWFbQXSwmwt2Mg==
X-Received: by 2002:adf:f4cc:: with SMTP id h12mr3149797wrp.171.1586503869907; 
 Fri, 10 Apr 2020 00:31:09 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:9052:1641:fbba:d9ee?
 ([2601:647:4802:9070:9052:1641:fbba:d9ee])
 by smtp.gmail.com with ESMTPSA id p10sm1725519wrm.6.2020.04.10.00.31.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Apr 2020 00:31:09 -0700 (PDT)
Subject: Re: [PATCH 03/10] nvme: always search for namespace head
To: Keith Busch <kbusch@kernel.org>, linux-nvme@lists.infradead.org, hch@lst.de
References: <20200409160908.1889471-1-kbusch@kernel.org>
 <20200409160908.1889471-4-kbusch@kernel.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <90cb3318-f064-0dc2-a200-6951865d577b@grimberg.me>
Date: Fri, 10 Apr 2020 00:31:05 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200409160908.1889471-4-kbusch@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_003112_082232_0ACD9401 
X-CRM114-Status: GOOD (  17.66  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Even if a namespace reports it is not capable of sharing, search the
> subsystem for a matching namespace head. If found, the driver should
> reject that namespace since it's coming from an invalid configuration.
> 
> Signed-off-by: Keith Busch <kbusch@kernel.org>
> ---
>   drivers/nvme/host/core.c | 11 +++++++++--
>   1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 253ea57855db..be2d856923e8 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -3489,8 +3489,7 @@ static int nvme_init_ns_head(struct nvme_ns *ns, unsigned nsid,
>   		goto out;
>   
>   	mutex_lock(&ctrl->subsys->lock);
> -	if (is_shared)
> -		head = nvme_find_ns_head(ctrl->subsys, nsid);
> +	head = nvme_find_ns_head(ctrl->subsys, nsid);
>   	if (!head) {
>   		head = nvme_alloc_ns_head(ctrl, nsid, &ids);
>   		if (IS_ERR(head)) {
> @@ -3498,6 +3497,14 @@ static int nvme_init_ns_head(struct nvme_ns *ns, unsigned nsid,
>   			goto out_unlock;
>   		}
>   	} else {
> +		if (!is_shared) {
> +			dev_err(ctrl->device,
> +				"Duplicate unshared namespace %d\n",
> +					nsid);
> +			ret = -EINVAL;
> +			nvme_put_ns_head(head);
> +			goto out_unlock;
> +		}

Given that you have multiple places that you put the ns head ref,
maybe it will be more maintainable if you add an out_put_ns_head tag to
goto and that will be like:
--
out_unlock:
         mutex_unlock(&ctrl->subsys->lock);
out:
         if (ret > 0)
                 ret = blk_status_to_errno(nvme_error_status(ret));
         return ret;
out_put_ns_head:
	nvme_put_ns_head(head);
	goto out_unlock;
--

Not a must, but to me seems better than puting the ref explicitly
every time...

otherwise,

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
