Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD07772EE0
	for <lists+linux-nvme@lfdr.de>; Wed, 24 Jul 2019 14:29:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Eh5PPsk/QgSkTRFIBByL0UjLoQaXNd2kqUE6NbwJJt4=; b=jJuQx/IG0YBtLmbG+JXOz1c26
	8Eogbf9+3y2cVO0ZBSKQtRP8F8E3czSmh4oLvRqp7oWKSvdsppRYY16JeP7q/xhtZfzklcWsKILPP
	wUdS0Zz4+tMXEY4TARhpS6sNCnTrn/7pJQUqQjBe5A5CMGXb+xd8b92d0423Ehq/yaXwQYA0EZplU
	1sIE5cxg8C0phnoDy6Y5lxvWlTylDXCc0d8HVdKevInh8T1sNRaT3XpCmFnguM8kJCH6BiwXBwlva
	KNQWvLA715Uh4YwktlilMGIvtxX5RUxO469A2WFtJ+tz46kycD2uUMYRoGENQCixbDgkh0v8yEGRC
	I7M2smSzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqGOw-0006gG-L6; Wed, 24 Jul 2019 12:29:46 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqGOr-0006fE-5f
 for linux-nvme@lists.infradead.org; Wed, 24 Jul 2019 12:29:42 +0000
Received: by mail-lf1-x141.google.com with SMTP id v85so31793107lfa.6
 for <linux-nvme@lists.infradead.org>; Wed, 24 Jul 2019 05:29:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lightnvm-io.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=Z5dowBMOgoDHtZcoO6HiKySdjmKod15D/YDX01JeNtw=;
 b=b78fTo7E/BpMNONyRKDHINMF/iAZp8fmcwX+mtDpi6qMLaSY8BzGEH2k28OYTUvf/X
 G6OH0mWa/IOHw1MAJzvug3RheeGNnMqt9yxbaMKI1s2SOH6d43fbVaRLB4urHvjv73Sn
 /mDwuGmjP6d2uQ+tz7N2C5nsumRg66QAw24c60ajgoqkMvj//5G1VZ/JgMpCOAl5kZ2a
 4u8tSOPBwiMTOxAV9w3zLx8RHcK9YV4N94p6OApnTNaBB713TN/LoYdK+Sv1AKupPj7Y
 sXN6yTXyif/+KdeU/kSdGCgJH0Wtpgcl8ROoy09nQBVqC+mON3D+G0DhP0A7XxC7LzjK
 iuRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=Z5dowBMOgoDHtZcoO6HiKySdjmKod15D/YDX01JeNtw=;
 b=EWOIJAZ6f5k/YxXTTlZPYT7u6VGMkT6elPXoegqae5G61fulexqfLXfAQTSpX5kFC7
 H+qCfPLEDcR0QWO6NTd4OUv1PXlVmKFL7AJMLDMe4S6l8kj9RD6GoiSFLG3wDS0fbG2l
 KNQO3vFpfkoZ4DTRY4M+a0knx2Ad4xmY1mEUuphdiMNhJ9F/E8lqadfMMELSuUu+Bbi7
 TtyrGoK0te3gzTB9oX5eTA8Ww9UHMm4i5c7vuGyui7zJu6MvmRbj7POrAEE20/buHo0d
 K/OwYBYldVOSOvBBwtd36AtNTZTU5v+KMCIsEANbxBoi03dL6u0buRHXU4bz0xGKwL+t
 flew==
X-Gm-Message-State: APjAAAWT/Dkalt9uQUKZFzY/E0tt42TtFuCWG/x1n0j5LXtdaaKbFf8t
 qj2U+m66rF0t4WaCxfKh0tc=
X-Google-Smtp-Source: APXvYqzZh00YlJ3uDXIQ2FbwWsn6BGxKZ3Yg/ZgoMGgLdlhVJAEvfbKfR8vwCVk6Hs5XiAh/b/Jh8Q==
X-Received: by 2002:ac2:4901:: with SMTP id n1mr25080455lfi.153.1563971378228; 
 Wed, 24 Jul 2019 05:29:38 -0700 (PDT)
Received: from [192.168.0.12] (2-111-91-225-cable.dk.customer.tdc.net.
 [2.111.91.225])
 by smtp.gmail.com with ESMTPSA id w1sm9813977ljm.81.2019.07.24.05.29.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jul 2019 05:29:37 -0700 (PDT)
Subject: Re: [PATCH 5/5] lnvm: introduce alias geometry for id-ns for lnvm
To: Minwoo Im <minwoo.im.dev@gmail.com>, linux-nvme@lists.infradead.org
References: <20190723183601.29370-1-minwoo.im.dev@gmail.com>
 <20190723183601.29370-6-minwoo.im.dev@gmail.com>
From: =?UTF-8?Q?Matias_Bj=c3=b8rling?= <mb@lightnvm.io>
Message-ID: <519420f6-350d-05e9-4938-45bc529b9a26@lightnvm.io>
Date: Wed, 24 Jul 2019 14:29:38 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190723183601.29370-6-minwoo.im.dev@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_052941_217306_481C3F33 
X-CRM114-Status: GOOD (  15.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 =?UTF-8?Q?Javier_Gonz=c3=a1lez?= <javier@javigon.com>,
 Klaus Birkelund <birkelund@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 23/07/2019 20.36, Minwoo Im wrote:
> Now we have 2.0 OCSSD spec which introudces Geometry command instead of
> Identity or something else.  This patch just adds an alias for this
> command for the given NVMe namespace with backward compatibility.
>
> Cc: Keith Busch <kbusch@kernel.org>
> Cc: Matias Bjorling <mb@lightnvm.io>
> Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
> ---
>   plugins/lnvm/lnvm-nvme.h | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/plugins/lnvm/lnvm-nvme.h b/plugins/lnvm/lnvm-nvme.h
> index f091f7b..2879a0b 100644
> --- a/plugins/lnvm/lnvm-nvme.h
> +++ b/plugins/lnvm/lnvm-nvme.h
> @@ -11,7 +11,7 @@ PLUGIN(NAME("lnvm", "LightNVM specific extensions"),
>   	COMMAND_LIST(
>   		ENTRY("list", "List available LightNVM devices", lnvm_list)
>   		ENTRY("info", "List general information and available target engines", lnvm_info)
> -		ENTRY("id-ns", "List geometry for LightNVM device", lnvm_id_ns)
> +		ENTRY("id-ns", "List geometry for LightNVM device", lnvm_id_ns, "geometry")
>   		ENTRY("chunk-log", "Chunk information by Get Log Page", lnvm_chunk_log)
>   		ENTRY("init", "Initialize media manager on LightNVM device", lnvm_init)
>   		ENTRY("create", "Create target on top of a LightNVM device", lnvm_create_tgt)

Hi Minwoo,

How about also rewording the text to:

List geometry structure for LightNVM device?

Also, do we want to use a short hand (instead of writing geometry in 
full)? How is it done elsewhere in the nvme-cli code?

Regards,

Matias


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
