Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2EB8F54A
	for <lists+linux-nvme@lfdr.de>; Thu, 15 Aug 2019 22:02:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CXsh1T+k8+Q66RzT9ZCwCY8A9gDOa6y2r476/XAot+w=; b=Ss3wjXhzobfx1hXuNROv1MivG
	btJGmQrjj1eX3Iz31JplhlgEKOOUNpV4E27S+ZQgNhVAZhF91gt9IxY2qsZaFUdhtbLyLoRxvhRdx
	TzDK3ZmHtKA8GMmB8tsd0iL9rUBHjgmgS4caMnTT3w3gC8N175j7J2GtdEScaFA3biK8Ted1J7yaL
	UDSA2EN5wQkaRO68AxwEi072zG4tnCjhBEYSMki/Ry17/7oEnlEfyRd/oP3qnwlcfe4YgU5PZC/EY
	lM37ZcbkRdx0ZFvy7oKnr/DVjaaxzySNR6CSX158mzeGNRs0Yb+AzsrynQrDbqlu29PfDQ+MYbdm1
	mVa9OtMZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyLwk-0001lj-4t; Thu, 15 Aug 2019 20:02:06 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyLwU-0001lP-0M
 for linux-nvme@lists.infradead.org; Thu, 15 Aug 2019 20:01:52 +0000
Received: by mail-pl1-x643.google.com with SMTP id c2so1452796plz.13
 for <linux-nvme@lists.infradead.org>; Thu, 15 Aug 2019 13:01:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=Ni14dV1XPHQN88rD//yKN0F+2JKYrUwYhGiByBATV1w=;
 b=LRE9+nvTAVJLGVXhIRgE847Sm2UPYY9tIkJnKyu88L/nfzEc0nxlo8sq6EOjtrYegY
 1Ukj2/AuBx8KT3CJuxgvv26PFNaeWTfqmvmhUZUWu0QxtWm7NvF1THi9Rw6Wu+5Kpid3
 tpAoxQm6ewTHsBvmHWtq9A7Qt4SklWm6EF/08=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=Ni14dV1XPHQN88rD//yKN0F+2JKYrUwYhGiByBATV1w=;
 b=m1RK6VaivnRTxy2G9JuKYATD0tPi0zb360KST/M7pbLScleAJ1mklZtXkw3SMa4PDh
 teUs2UsInQNljeoKBJwkw1FEN+0dotse4T5gk0JJ8nySouAeL0Zld3GtT0g+3EvAXnMl
 poQBJnfVxVBvw1D4cK9nnARyADudH7FzfLaGyrAzLGvCnSWQ9ibtvF0zzimdXJZf7YSu
 xuC37I19dMX0P5hBZYPv44OXwGm3ArBpCMrrLihFCb5bL4htEbRDljTKLGUdt1qe8B2C
 4TKUqN4hM51wCE12vYGO6E09YDS5iUBbmiWrj98rj3iF3YaTZUmXkMleWKow1epSSsLi
 Agsw==
X-Gm-Message-State: APjAAAVZU6OonevzjjAPevGsJGDJKkwKvc87uFacZtmgxF+Hi2+wtFPM
 +NoWVgJBuLvJ5aXrD0bIallODQ==
X-Google-Smtp-Source: APXvYqzaUhbKKYG6q4FCNj+lY/hIENqgPhwKEpuOUkuN5VVTNY/0bx5nHbsLdnYWynHLuD7eTqHMcg==
X-Received: by 2002:a17:902:54d:: with SMTP id
 71mr5694478plf.140.1565899309025; 
 Thu, 15 Aug 2019 13:01:49 -0700 (PDT)
Received: from [10.230.29.90] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id 97sm2104599pjz.12.2019.08.15.13.01.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 15 Aug 2019 13:01:48 -0700 (PDT)
Subject: Re: [PATCH v6 0/7] nvme controller reset and namespace scan work race
 conditions
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190813064304.7344-1-sagi@grimberg.me>
 <0c8606d6-a841-a24b-0a8e-64edc4c3ccbd@grimberg.me>
From: James Smart <james.smart@broadcom.com>
Message-ID: <0984162b-187e-5711-911c-c354bc37e9a5@broadcom.com>
Date: Thu, 15 Aug 2019 13:01:47 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <0c8606d6-a841-a24b-0a8e-64edc4c3ccbd@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_130150_054879_22CFABCA 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 Hannes Reinecke <hare@suse.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 8/15/2019 10:45 AM, Sagi Grimberg wrote:
> Hannes, Keith, James,
>
> I think this series got the blessing from Hannes and Keith, but
> I also want to hear from James.
>
> Also Hannes, did you happen to give this a try? it would help a lot
> knowing that it fixes the issues you were seeing.

I'll look through it shortly.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
