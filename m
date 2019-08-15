Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B026D8F63D
	for <lists+linux-nvme@lfdr.de>; Thu, 15 Aug 2019 23:05:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=osrtFpzsYDZ8uvM0v+sLnrdKkf3q48Ri6ZpDCmoyIHk=; b=bUNWUiaIw73jt91Tii+Ophtk9
	kXGHReDGafwRT5VEQGhHQvyvZETTi3w/PEPSy4YS76odsgG99X+I7RwjaUBKgtx1UUtNJGF0kEJjn
	/Bz0UCwLU+AtJ6aB/+fUAwpT7NZeJgARLLY7ujaeIC7VtCE9JPhXaWmM9jHqLJ4eQUo3SvCGzfXmo
	PaSt/yZSkMvVOQBn7BJKbCt7pTA4j1U9P7Ccy1ODwkdNKVX2ob4Jj95w+vqkHb53E9jDIqrz8ORA/
	R+oyLDjMk5JQ7HF0BfE8hbHJ/Fw8BnxAsoeG0LthuKVmSzJNev5UpGxrxlRmJpk0+Q7f5//uwYIe2
	JVf+YJbAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyMw5-0000F0-6D; Thu, 15 Aug 2019 21:05:29 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyMvu-0000Ea-Lh
 for linux-nvme@lists.infradead.org; Thu, 15 Aug 2019 21:05:21 +0000
Received: by mail-pf1-x441.google.com with SMTP id v12so1922502pfn.10
 for <linux-nvme@lists.infradead.org>; Thu, 15 Aug 2019 14:05:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=PhV7lkQYeP7ulJiIIcKp9isvmQHtSZjmaQ+5Iy6YvQA=;
 b=enUxfouD1uEB4wLsW73Ywn8BtEnllxERXKUs0fyh5oMpcdgTtdHtMm8EJXWHs2ZY3F
 slfZq8TBX/KLPc/lCiRXzUoo6ATSjmpDEBn4A3ZN2NopGBDbtpisCHDQXX4omB21Sp7i
 x33qa4VdArjgXuvxDKbDUQJ3/GWjAu2oferWA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=PhV7lkQYeP7ulJiIIcKp9isvmQHtSZjmaQ+5Iy6YvQA=;
 b=YttGCyQwp9vbGz3H/yn90gf+dWUwMDATsMQkMBpsdyFeIqSH439EH+53pAW3L1qaI8
 yUmtxTyJZnUHahVh6o3v/J55PNIJZURA5A/kVbG0fxoPKE+O8fRj5ZNQIKuBWS6HluE0
 a9O+k1MXPtCnGsrpczK++c6jvimqDBZmO+7nAApSOEK95bX73FZyltg5upzLFVRGhuDk
 BejSX5gB2pi9WysdpvXJ/BW5hVim3O5XeRfAFbjg7uoABwSekNSx3vAA4Ar+Cs1PYmIi
 tA3J6+q+wKvqOe/Sp+LUzeemo7nHTtMEjFPlTbwf3LlC8Y4TRE72SJ5YEUDTehrHk3Qh
 a5Hw==
X-Gm-Message-State: APjAAAWeWOtLPjuHGDOpllRtiKbF0aN2L7bHIjWq/25Uma9shL45953R
 LIRefjptVUZWiOFrbTx/PrPrbg==
X-Google-Smtp-Source: APXvYqwbCy0+oI1lSUtfTDT+y7dWkMK6Ah4oC2TjBLLSP1tZuNGtjJKgRsD5c6NU+yF3IsDlNq6NNw==
X-Received: by 2002:a63:b346:: with SMTP id x6mr5033990pgt.218.1565903117708; 
 Thu, 15 Aug 2019 14:05:17 -0700 (PDT)
Received: from [10.230.29.90] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id h20sm3735654pfq.156.2019.08.15.14.05.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 15 Aug 2019 14:05:17 -0700 (PDT)
Subject: Re: [PATCH v6 2/7] nvme: return a proper status for sync commands
 failure
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190813064304.7344-1-sagi@grimberg.me>
 <20190813064304.7344-3-sagi@grimberg.me>
From: James Smart <james.smart@broadcom.com>
Message-ID: <12b07987-4190-d1b9-22b1-468ad9f8f540@broadcom.com>
Date: Thu, 15 Aug 2019 14:05:15 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190813064304.7344-3-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_140518_711808_4378E40E 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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



On 8/12/2019 11:42 PM, Sagi Grimberg wrote:
> callers should not rely on raw nvme status, instead return
> is more appropriate blk_status_t.
>
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> ---
>   drivers/nvme/host/core.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
>


Reviewed-by: James Smart <james.smart@broadcom.com>

-- james



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
