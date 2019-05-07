Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1495168DD
	for <lists+linux-nvme@lfdr.de>; Tue,  7 May 2019 19:12:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bg23D92fNvw90lRsgpbmtNxiAhxbnG3i4bvQCgAEehY=; b=F6uOpQ0X2LFP4Yl7BJvFEj5IC
	BeEcbDsrDr+AGWsg/lwZbZBju2O6HfCGefAn9HH83FZ9/YxgCUOYnNRd6FaIfsivqtRP6CpmTz+/O
	f4kYgiXQeu5nwj4kkk+U2U8iu++Q0uZsphQOsTOH6DzDwkTDqW0wQVMK6iz66/YVvO8YoM/eSnyMY
	tdPvIlKCyd9xcvluZJcfD13AEVunGsexJA5K+BklJ2BIijUngaFRPUs01NG17oEC3A6/XPY6A+VRT
	yb76UsRxF6Vu6d15WN98ESj13S2SdMOHLBnej1uNnT0UB9V5Kd+sAWHs5v9zMpXjdPtyzaWcwQ4TC
	ivLJZDZ5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO3dz-0004i9-Cq; Tue, 07 May 2019 17:12:43 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO3dv-0004hr-A9
 for linux-nvme@lists.infradead.org; Tue, 07 May 2019 17:12:40 +0000
Received: by mail-pl1-x641.google.com with SMTP id bi2so8485300plb.13
 for <linux-nvme@lists.infradead.org>; Tue, 07 May 2019 10:12:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=9ZEDjUv81kAlsPP95P3KqnhnmnGZWHcTOJ9KZTYPNrM=;
 b=JtHarFNt7EFbXLQEb9+q5+Src3VgZ0XmKw6lw0vkIlXXRUfMdrClGLklQUiw/H9nOX
 niSzw2BN3TRApCX20ekSEKeOuyFx0N9kt7f8D+C5UnqAaFTSLw+u5PN/BpMm0cU8QcE8
 0+rkANi6jbN8Rf8/YPq6oeh2EemFfEXVMyTm0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=9ZEDjUv81kAlsPP95P3KqnhnmnGZWHcTOJ9KZTYPNrM=;
 b=KJiOp3Nrc4jP+PgBfR565t7NYjB6D5ZDrdIUtVls5GX87a3CbSzwCFxKbBVXULW7Jo
 YoBu7HK8IP3IyeN8iUHfxhupwyyTpa68prFX1MGFZ87NB4ODLtMH4XFNzg/9rD2QT5HQ
 GFnIDCY1isB9HejZ4ZVne7CiuO3+bVw/yPULr3J7UZdJfIlzSinq1RIf9N+OR4NPcFTw
 kq0sbN3j9kvSEcheMbY8Pz+57BUVx9t6i89jr5+DGJWsTXIy4upJaOqB9H8itIpp6dKj
 /3jC9r4YlbHONKE+8W5vPEWzJOfXkQkFcL3Y7uwDSxQ3KZflmVFBv47MspXdcLwP/5gx
 5Ozw==
X-Gm-Message-State: APjAAAU+GYIY+VkA3FDMO7nedTs3EnE6CxsjH2m0OKFS+nBzpdLo7u5P
 gNgfD85pOUkuiCpWjNJPLV/EFolYR5ZVjYdmTZ47IZQKOKOAWkvrMys8YVXo590BN1tMwfk/yvz
 tYte49ByNSo1rxRSjuduxUdU2tU7fXhUm5uHd7oeWrumNPGJG3dmUPCK9F0hpl7YRPdqycEi45h
 lBVlZGlQ==
X-Google-Smtp-Source: APXvYqzasqlW4YLtoQrPGXFZ7kyF7y3PJo4layXBo7F2e5gHGARfMIXTP4O2mX0S8KHXiSZUywd2zA==
X-Received: by 2002:a17:902:1105:: with SMTP id
 d5mr41770933pla.311.1557249158243; 
 Tue, 07 May 2019 10:12:38 -0700 (PDT)
Received: from [10.69.37.149] ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id y10sm19877555pfm.27.2019.05.07.10.12.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 10:12:37 -0700 (PDT)
Subject: Re: [PATCH nvme-cli rfc 4/6] fabrics: add --quiet option
To: Max Gurtovoy <maxg@mellanox.com>, linux-nvme@lists.infradead.org
References: <20190223023257.21227-1-sagi@grimberg.me>
 <20190223023257.21227-5-sagi@grimberg.me>
 <58b674a5-a40e-c0b1-2b89-2fdc89d8efa0@mellanox.com>
From: James Smart <james.smart@broadcom.com>
Message-ID: <2437d298-a26d-924f-281e-d20a97cee4c0@broadcom.com>
Date: Tue, 7 May 2019 10:12:33 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <58b674a5-a40e-c0b1-2b89-2fdc89d8efa0@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_101239_359731_20BDB3A6 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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



On 5/7/2019 2:35 AM, Max Gurtovoy wrote:
>
> (and also example can be added to commit message :) )
>

wow, all these examples. What fun is that. What's left to the developer 
to go figure out ? :)

-- james


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
