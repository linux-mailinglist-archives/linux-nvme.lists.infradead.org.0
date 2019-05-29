Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CAFE2E81B
	for <lists+linux-nvme@lfdr.de>; Thu, 30 May 2019 00:24:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EkQhv4HB2U3q6Al9I/iORNzpP1OPH59nQvegms1OBvs=; b=oEy9KE2rbVPXXa8EyptkFFgs9
	3wkLaYIVBBXyeASH7kIDBEWxRF444zSQHh9OrbQDSsLkuUfi+/Qk9Qa1l+mVXwbxMPnGvOusnJaxI
	RZJhIqkcBGcpuH97Pj7/7T3jt81sHN77iXoQ9lP3dRfZ9c1/yURy/P7gk+5EiAlDaoF9M9olc+g4O
	/cg5NktfdSkavQbMQh4p2yjvj5vKTXl2bi6s3UICFSJ5BUZqlKMJOJBPXgBqCL+4uD0RbAlIJNfhQ
	L/EHrETLqcG0mWCBsjd2/PW4hZlBDhjnWQik+BbSZY9rG5NSTLb+4WNSt1G8eQpJQ3fpAgNQXmM9G
	60oQuZ7Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW6zl-0007d0-I2; Wed, 29 May 2019 22:24:29 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW6zg-0007cj-DQ
 for linux-nvme@lists.infradead.org; Wed, 29 May 2019 22:24:25 +0000
Received: by mail-pf1-x444.google.com with SMTP id r22so2534905pfh.9
 for <linux-nvme@lists.infradead.org>; Wed, 29 May 2019 15:24:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=n58GoC0lBTu66V20UqHQeXUwB/ArdoaGtelkasiOOfM=;
 b=TtW7N/+0mDbCBDXh31fxXBIlK7/SV8PVYyB1mOR7ie9TNSUfWbrzVcVgbQYx5AXXw1
 tAF7VP2M7b0V3kYhjn4ON726hToapdZm/cx4pV/VzS+oI01/ZTukVXiuA0rst7YqIpwn
 eZmCZwDXVUBplc6JyFEnZd6iMRo74Bc+ElCkQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=n58GoC0lBTu66V20UqHQeXUwB/ArdoaGtelkasiOOfM=;
 b=gaEptdwI80buNtNJUPc1zKN/PJtuS5RyUyzLowTwS1a0fidw+GMiJTH1LWpqQ6cPs2
 S0YdA3CriPi6apu2ZZTUl+rWC8T6GFK0oDh6o7iZDNeskvnLi2jQ56JScUu8SjKkg+/8
 lOvDSujWgfUE+/SJXUy7jUPYa9PME++9J/IT6fI3A/i1zzuzsCH7VeQwcqugtvgj5hGm
 Sa8HRpnuqkJ+4G4O4PTpLO10U0aXpF2nK3LNFihJfVl/7fcqqHfkZzucbX3C0K4flbST
 B7qjlZ7BxKa2aFh9+ggL4mjnrYAsV2GYMcfq5FZoB8nJ+k9nh6QDBYZA49p80SPggt2h
 OkiA==
X-Gm-Message-State: APjAAAVLBP4us5bUxMLFGqW5jCOWYB6KKjfQkVTkPw/wW0mfsIPj45MV
 ouuzSzoMhTVJhKWYSdeihapu4pyT38Wn8C7iQp5S7YDxjPH07jkqWyMu0Z5Nh/ytLaU6CxyonlP
 6h4vwdNMpeekthCHIIUDj2kyxCW7umaKTAtf2jWy1QjEIHdOl7GKp5atw2LDBfFs0LK7fHzoQlB
 hVjiiY9Q==
X-Google-Smtp-Source: APXvYqzB+WotJ3w9xOWlSB0IWM6vvNBBf6odTXJXuPqfE9/NNuii1WaKZ354+rvZhUiq2sMyGrxUCQ==
X-Received: by 2002:a63:2248:: with SMTP id t8mr378758pgm.358.1559168663266;
 Wed, 29 May 2019 15:24:23 -0700 (PDT)
Received: from [10.69.37.149] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id y191sm617820pfb.179.2019.05.29.15.24.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 15:24:22 -0700 (PDT)
Subject: Re: [PATCH] nvme-fc: Add message when creating new controller
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190528182404.3463-1-jsmart2021@gmail.com>
From: James Smart <james.smart@broadcom.com>
Message-ID: <c0671bef-9ddd-17ed-3d4f-0281c8945311@broadcom.com>
Date: Wed, 29 May 2019 15:24:21 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190528182404.3463-1-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_152424_460491_34290224 
X-CRM114-Status: UNSURE (   7.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
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

Please ignore - new patch coming out shortly

-- james


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
