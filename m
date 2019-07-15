Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F37EF69F8B
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jul 2019 01:35:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=t1+gl3JwVINoBm7zBx3AM85tzuK8hQfMXKPV6jT936w=; b=dQDlir6e5GkwM/K5VZFnvEZF3
	2a7Wp5KB1ZNnESsDfukVALkLHh759zn0FcM2A4afeKQJN0SyIABAf8z0TPliuyiTjkVxAWEAMKbNI
	VRqZUpi+3Yd6tJiry44mp9QfNn2GoAgVX4Hu59I/POEvpAbFP+VIClYy8uE9eljGEfoXUy/kKrfJ5
	vV6oKH20pFdXMcunc+kOLp8n9oK8gFZYxyAugYdc9FofLz0C6pcGHVNxdwjOHEgr5zAhq9oXUguvw
	L+sV8mZOMEFV3szq7is/gcCCa/0nH7Nkr8TAElgBFlDGqorpgbQSaKQwdO2R5pPW/0i8HVbH8nYaG
	0az9z3oYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnAV2-00037a-Q0; Mon, 15 Jul 2019 23:35:16 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnAUn-0002YN-HR
 for linux-nvme@lists.infradead.org; Mon, 15 Jul 2019 23:35:02 +0000
Received: by mail-pf1-x443.google.com with SMTP id p184so8140418pfp.7
 for <linux-nvme@lists.infradead.org>; Mon, 15 Jul 2019 16:35:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:from:to:references:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=2x/SZQi/Za0bytCCB/Zhsvg778FsPXoGmdmY5ztQI3s=;
 b=M4YhvK4ewoV8YAhTlc96bvV8z1g9RAph6yRYfBYPBjYS+MhfA7+NxslEztlnoeHHyu
 XpR5Y1rAccAHYuzEP06WMIuOhexE4a7IvxpUW5W7OSeC9nYEwr4SlhsIZ/WIfGV1L2tz
 1iLCS8+tI2aXRv6LqgSOR6hb952it+O91PorA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=2x/SZQi/Za0bytCCB/Zhsvg778FsPXoGmdmY5ztQI3s=;
 b=pCnhO8rGbg6uAVbZI0MAwMgrT4szyTGumdKW+Hj2gcLrlVAelKvfpy4053Cn1sVSyO
 VYYnCSviJUxCk705PPNTghKJhc22SIDUOVF5D0WJm2MI0GFPx25lAjJNQ6Mz5hAsyo/b
 QJyWKjy6TLs8Hypz4FTxVH6uXQB+zOZgTPanlOyOMpOu6eIy7Z3nnL71BjUH6RiuKow9
 9MCwuaQG6FbGJpNL87XVV7iY1ATCCNF4v5H1pP2hSCbGlt0ur7ZRBrGWGjmhjD+zwDkm
 Y07cXbV45iGBIypTbJLa9zX0VHHlHMOasY0jWGTP27Q1+RoevQQkzHm7aguKsaUd95Oc
 hUOA==
X-Gm-Message-State: APjAAAUk6/900BiQ5bXV82RmqjQ5U40K8HK4uobgqvnG+2610l3ngOK5
 rhoeHv+tpCmJTc6dES7+ZwFBw+ucxj90GGSIIdVnDjiNH4t25NIwrQAWcE+RzuQzPT1zcw3GWXO
 9noXbH/D+Ec/4jExHPKi6DLet0AJbuRBcr1VU9pMEv0SzSHvBSFD5vG/ZusTtrDb4EX6oTon6LK
 KeySmjeA==
X-Google-Smtp-Source: APXvYqyzPfEOXltpkqfx9xSlLYMK1zM5FGo5Ql6mmKTUqSz/j/btTUT06TJxERmRdwX41Yfctfcw7w==
X-Received: by 2002:a17:90b:8e:: with SMTP id
 bb14mr32291060pjb.19.1563233700697; 
 Mon, 15 Jul 2019 16:35:00 -0700 (PDT)
Received: from [10.69.69.102] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id s16sm17776081pfm.26.2019.07.15.16.34.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 16:34:59 -0700 (PDT)
Subject: Re: [PATCH rfc v2 09/10] nvme-cli: add --quiet option
From: James Smart <james.smart@broadcom.com>
To: Sagi Grimberg <sagi@grimberg.me>, James Smart <jsmart2021@gmail.com>,
 linux-nvme@lists.infradead.org
References: <20190712003140.16221-1-jsmart2021@gmail.com>
 <20190712003140.16221-10-jsmart2021@gmail.com>
 <46dcab64-c4f9-74dc-b75c-4f4b8926051d@grimberg.me>
 <898fcfa4-e70f-fd0d-0905-cc4af74d4cda@broadcom.com>
Message-ID: <36f155f5-a661-1b5b-4596-55b7333abca0@broadcom.com>
Date: Mon, 15 Jul 2019 16:34:58 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <898fcfa4-e70f-fd0d-0905-cc4af74d4cda@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_163501_588563_9C1833E4 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 7/14/2019 7:49 AM, James Smart wrote:
>
> On 7/12/2019 10:35 AM, Sagi Grimberg wrote:
>> When I pass it manually it works, but not from udev... Not sure what
>> is going on...
>
> ?? I'll check it on my side
>

yeah - the --quiet option wasn't passed right. It became part of the 
service name, not in the command invoked.

fixing it

-- james


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
