Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D65D17CA34
	for <lists+linux-nvme@lfdr.de>; Sat,  7 Mar 2020 02:12:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=33ok1iH/cVZVAXyiTvoaHlry7hzSB7KU+ZJ837pKKM8=; b=tSDKbKJJqKmPxqf5cEkMWfwV7
	ocpoyfrMaAL8Xv0ki/vp9UwIr3fpp/35iitlcJavxQY3AEn9426ivlJRpxAE8L0noego8ODfrGsgh
	nJREIcVz06kOwxYBE0OD0oez+3mi8GeqKg/BisOqdnC8F2rs3P5ltV4/VtnLlIhqUxnoWvpnH2HvW
	R/Ys978zRtTPe29WbpBao+z5p/DvjNMcEdVAvfYbD9vA9IS/fsCPRaqOCEjW/rnLGW+AwSb3rl8uR
	Z9s9IOXUtRX3oggaA4IBAzNZ81lZoUzHjh/m4/A8SOslLRMqYbcag0orJNz5RJO7+L21WIuP5dTY/
	oSkPNsl0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAO0o-0001sz-HA; Sat, 07 Mar 2020 01:12:18 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAO0j-0001sK-B7
 for linux-nvme@lists.infradead.org; Sat, 07 Mar 2020 01:12:14 +0000
Received: by mail-pj1-x1044.google.com with SMTP id s8so1815880pjq.0
 for <linux-nvme@lists.infradead.org>; Fri, 06 Mar 2020 17:12:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=is5eMYR5TRjbMlMlv4qpRMKCts/ME1/kevOUWuD700U=;
 b=CXVE2d4ReD3l19vVgCS87yDhSICDdl5H79smfxANFxlqu/8L4Rt3FujjuSRLdoCup6
 jfAcOtKs6LSsO/5aDhnUWcDmWNYfTrYf92BAwi4Af3GMgDlxvSBJbKPizQdmbUGnibD9
 2WYPcb+iWYpyiQ4dT8+n4LRfy1Cix5eXb4KKs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=is5eMYR5TRjbMlMlv4qpRMKCts/ME1/kevOUWuD700U=;
 b=CFn0tKpnEoKdHWpbZuqE8glndUvwXTr+JWDlgPUqbySd6RVbe1Xtz5qKtvdjF/MpnU
 KIhHXLXqtCtkLuZi3QCv/Kv5MBxDRY/yIJOqI/XzKGqB7Ka6W5XnbxbGaQVUiAadUDhl
 8KmaBhGIF4iO5f1Uad8UkhSgYbzFcE90/8FvD2WKb1QySilLg06ZEwUxT3aRF92bUIJy
 I47T7Sg1HLekkz5tsUWPL9m9ai9OKgJA/g0+ki7t8c4NjqaVm/gPfom3lcE1bKeHi/+j
 mVtipyf5BW4hBKdGDAE9rVLpNjk7J41JYcBp0I1cwxt3mgKzrESg0lMBdptMLtkI1q4E
 +Bdw==
X-Gm-Message-State: ANhLgQ0P+haBb4LEQrEHLfhIhLWtGpg7+6CQyZhim+aeG3sQeZY4X8Wy
 ISPfP59SFV6Q+tLlLsETFZXjNqd47ifXWWSUO4Y0KZ5ptB5aFonUbeAvCN8/PPyTwqO7FAl59if
 WnmENzIAX/tyg5yl8SVTM4+hgXu9Yfeq1OSgu30yrBFRWQqHXYkFln24LMZ6wqfLCgxpjeKsVLU
 JPtAOoRQ==
X-Google-Smtp-Source: ADFU+vt2j+FB4em1A2hREKJvZEyNg6p5LEkggzs3OFOt4UpoR+yPGJq6jtcUM/FzZmPTH9LqBRdjAQ==
X-Received: by 2002:a17:902:7583:: with SMTP id
 j3mr5743369pll.236.1583543532019; 
 Fri, 06 Mar 2020 17:12:12 -0800 (PST)
Received: from [10.230.0.17] ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id 17sm5101672pfu.166.2020.03.06.17.12.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 Mar 2020 17:12:11 -0800 (PST)
Subject: Re: [PATCH 3/3] nvme/fcloop: flush workqueue before calling
 nvme_fc_unregister_remoteport()
To: Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
References: <20200306130440.16864-1-hare@suse.de>
 <20200306130440.16864-4-hare@suse.de>
From: James Smart <james.smart@broadcom.com>
Message-ID: <c228ff0f-f596-ba0c-a8cc-e5281c268483@broadcom.com>
Date: Fri, 6 Mar 2020 17:12:08 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200306130440.16864-4-hare@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_171213_380624_94BA19D3 
X-CRM114-Status: GOOD (  16.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
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
Cc: Keith Busch <keith.busch@wdc.com>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 3/6/2020 5:04 AM, Hannes Reinecke wrote:
> nvme_fc_unregister_remoteport() will be sending LS requests, which then
> would end up on a workqueue for processing. This will deadlock with
> fcloop_remoteport_delete() which would try to flush the very same queue.
>
> Signed-off-by: Hannes Reinecke <hare@suse.de>
> ---
>   drivers/nvme/target/fcloop.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/nvme/target/fcloop.c b/drivers/nvme/target/fcloop.c
> index 4f9435d9fa61..0209da9bcb67 100644
> --- a/drivers/nvme/target/fcloop.c
> +++ b/drivers/nvme/target/fcloop.c
> @@ -943,7 +943,6 @@ fcloop_remoteport_delete(struct nvme_fc_remote_port *remoteport)
>   {
>   	struct fcloop_rport *rport = remoteport->private;
>   
> -	flush_work(&rport->ls_work);
>   	fcloop_nport_put(rport->nport);
>   }
>   
> @@ -1278,6 +1277,7 @@ __remoteport_unreg(struct fcloop_nport *nport, struct fcloop_rport *rport)
>   	if (!rport)
>   		return -EALREADY;
>   
> +	flush_work(&rport->ls_work);
>   	return nvme_fc_unregister_remoteport(rport->remoteport);
>   }
>   

And this is what we really needed, although there's probably a like 
thing that should be done on the targetport as well.

-- james


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
